using System.Text;
using Api.Presentation.Filters;
using Api.Presentation.MiddleWare;
using Application;
using Domain;
using FluentValidation;
using FluentValidation.AspNetCore;
using Infrastructure.Data;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MicroElements.Swashbuckle.FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi;
using Minio;
using SharedKernel.Constants;
using SharedKernel.Options;
using StackExchange.Redis;

var builder = WebApplication.CreateBuilder(args);
var services = builder.Services;

services.Configure<SmtpOptions>(builder.Configuration.GetSection("SmtpSettings"));
services.Configure<JwtOptions>(builder.Configuration.GetSection("Jwt"));

// database
services.AddDbContext<ApplicationDbContext>(options =>
{
    options.UseNpgsql(builder.Configuration.GetConnectionString("PostgreSQL"));
});

// minio
services.Configure<MinioOptions>(builder.Configuration.GetSection("Minio"));
services.AddSingleton<IMinioClient>(sp =>
{
    var options = builder.Configuration.GetSection("Minio").Get<MinioOptions>()!;
    var client = new MinioClient().WithEndpoint(options.Endpoint).WithCredentials(options.AccessKey, options.SecretKey);
    if (options.UseSsl) client = client.WithSSL();
    return client.Build();
});

services.AddScoped<IStorageService, StorageService>();

// repositories
services.AddScoped(typeof(IRepository<,>), typeof(Repository<,>));
services.AddScoped<IUnitOfWork, UnitOfWork>();

// services
services.AddScoped<IJwtService, JwtService>();
services.AddScoped<IOtpService, OtpService>();
services.AddScoped<IMailService, MailService>();

// controllers
services.AddControllers(options => options.Filters.Add<ApiResponseFilter>());

// validation
services.AddFluentValidationAutoValidation();
services.AddValidatorsFromAssemblyContaining<Program>();
services.AddValidatorsFromAssembly(typeof(ApplicationAssemblyMaker).Assembly);


// swagger
services.AddSwaggerGen(options =>
{
    options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Name = "Authorization",
        Type = SecuritySchemeType.Http,
        Scheme = "bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Description = "Enter your JWT token (without 'Bearer ' prefix)"
    });

    options.AddSecurityRequirement(document => new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecuritySchemeReference("Bearer", document),
            new List<string>()
        }
    });
});
services.AddEndpointsApiExplorer();
services.AddFluentValidationRulesToSwagger();

// CQRS
services.AddMediatR(config =>
{
    config.RegisterServicesFromAssembly(typeof(ApplicationAssemblyMaker).Assembly);
    config.RegisterServicesFromAssembly(typeof(DomainAssemblyMaker).Assembly);
});

// Valkey
var valkey = builder.Configuration["Valkey:ConnectionStrings"];
services.AddSingleton<IConnectionMultiplexer>(
    ConnectionMultiplexer.Connect(valkey!));

services.AddSingleton<ICacheService, CacheService>();

//JWT
var jwtSettings = builder.Configuration.GetSection("Jwt");
services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme).AddJwtBearer(options =>
{
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuerSigningKey = true,
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtSettings["Key"]!)),
        
        ValidateIssuer = true,
        ValidIssuer = jwtSettings["Issuer"]!,
        
        ValidateAudience = true,
        ValidAudience = jwtSettings["Audience"]!,
        
        ValidateLifetime = true,
        ClockSkew = TimeSpan.Zero
    };
});

// Authorization
services.AddAuthorization(options =>
{
    foreach (var policy in AppPolicy.Policies)
    {
        options.AddPolicy(policy,
            policyBuilder =>
            {
                policyBuilder.RequireAssertion(context =>
                    context.User.IsInRole("Admin") || context.User.HasClaim("policy", policy));
            });
    }
});

var app = builder.Build();


app.UseHttpsRedirection();
app.UseAuthentication();
app.UseAuthorization();
app.MapControllers();

//MiddleWare
app.UseMiddleware<ExceptionHandlingMiddleware>();

app.UseSwagger();
app.UseSwaggerUI();

app.Run();