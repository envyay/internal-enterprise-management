using Application;
using FluentValidation;
using FluentValidation.AspNetCore;
using Infrastructure.Data;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MicroElements.Swashbuckle.FluentValidation.AspNetCore;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);
var services = builder.Services;

// database
services.AddDbContext<ApplicationDbContext>(options =>
{
    options.UseNpgsql(builder.Configuration.GetConnectionString("PostgreSQL"));
});

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
});

var app = builder.Build();
app.MapControllers();

app.UseSwagger();
app.UseSwaggerUI();

app.Run();