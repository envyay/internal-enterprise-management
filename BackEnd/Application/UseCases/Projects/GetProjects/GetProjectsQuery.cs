using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Projects.GetProjects;

public class GetProjectsQuery : IRequest<List<Project>>
{
    
}