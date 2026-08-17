using Application.UseCases.Projects.CreateProject;
using Application.UseCases.Projects.DeleteProjectById;
using Application.UseCases.Projects.GetProjectById;
using Application.UseCases.Projects.GetProjects;
using Application.UseCases.Projects.GetTicketStatusesByProjectId;
using Application.UseCases.Projects.UpdateProject;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProjectsController(ISender sender) : ControllerBase
{
    [Authorize]
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var projects = await sender.Send(new GetProjectsQuery());
        return Ok(projects);
    }

    [Authorize]
    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetById(Guid id)
    {
        var project = await sender.Send(new GetProjectByIdQuery{Id = id});
        return Ok(project);
    }

    [Authorize]
    [HttpGet("{id:guid}/TicketStatuses")]
    public async Task<IActionResult> GetTicketStatusesByProjectId(Guid id)
    {
        var ticketStatuses = await sender.Send(new GetTicketStatusesByProjectIdQuery { ProjectId = id });
        return Ok(ticketStatuses);
    }

    [Authorize]
    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateProjectCommand request)
    {
        var projectId = await sender.Send(request);
        return Ok(projectId);
    }

    [Authorize]
    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateProjectCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [Authorize]
    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteProjectByIdCommand{Id = id});
        return Ok(success);
    }
}