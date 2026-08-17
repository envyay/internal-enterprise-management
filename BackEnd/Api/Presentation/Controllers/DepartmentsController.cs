using Application.UseCases.Departments.CreateDepartment;
using Application.UseCases.Departments.DeleteDepartment;
using Application.UseCases.Departments.GetDepartmentById;
using Application.UseCases.Departments.GetDepartments;
using Application.UseCases.Departments.UpdateDepartment;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class DepartmentsController(ISender sender) : ControllerBase
{
    [Authorize]
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var departments = await sender.Send(new GetDepartmentsQuery());
        return Ok(departments);
    }

    [Authorize]
    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetById(Guid id)
    {
        var department = await sender.Send(new GetDepartmentByIdQuery {Id = id});
        return Ok(department);
    }

    [Authorize]
    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateDepartmentCommand request)
    {
        var departmentId = await sender.Send(request);
        return Ok(departmentId);
    }

    [Authorize]
    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateDepartmentCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [Authorize]
    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteDepartmentByIdCommand { Id = id });
        return Ok(success);
    }
}