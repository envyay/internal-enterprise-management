using Application;
using Domain;
using FluentValidation;
using FluentValidation.AspNetCore;
using Infrastructure.Data;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MicroElements.Swashbuckle.FluentValidation.AspNetCore;
using Microsoft.EntityFrameworkCore;
using Minio;
using Qdrant.Client;
using SharedKernel.Options;

var builder = WebApplication.CreateBuilder(args);
var services = builder.Services;

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

// qdrant
services.Configure<QdrantOptions>(builder.Configuration.GetSection("Qdrant"));
var qdrantOptions = builder.Configuration.GetSection("Qdrant").Get<QdrantOptions>()!;
services.AddSingleton(new QdrantClient(host: qdrantOptions.Host, port: qdrantOptions.GrpcPort));

services.AddScoped<IQdrantService, QdrantService>();


// repositories
services.AddScoped(typeof(IRepository<,>), typeof(Repository<,>));
services.AddScoped<IUnitOfWork, UnitOfWork>();

// controllers
services.AddControllers();

// validation
services.AddFluentValidationAutoValidation();
services.AddValidatorsFromAssemblyContaining<Program>();
services.AddValidatorsFromAssembly(typeof(ApplicationAssemblyMaker).Assembly);


// swagger
services.AddSwaggerGen();
services.AddEndpointsApiExplorer();
services.AddFluentValidationRulesToSwagger();

// CQRS
services.AddMediatR(config =>
{
    config.RegisterServicesFromAssembly(typeof(ApplicationAssemblyMaker).Assembly);
    config.RegisterServicesFromAssembly(typeof(DomainAssemblyMaker).Assembly);
});

var app = builder.Build();
app.MapControllers();

app.UseSwagger();
app.UseSwaggerUI();

app.Run();