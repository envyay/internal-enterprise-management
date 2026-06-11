using Application.UseCases.Departments.GetDepartmentById;
using Application.UseCases.UserGroups.CreateUserGroup;
using Application.UseCases.UserGroups.DeleteUserGroupById;
using Application.UseCases.UserGroups.GetUserGroupById;
using Application.UseCases.UserGroups.GetUserGroups;
using Application.UseCases.UserGroups.UpdateUserGroup;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UserGroupsController(ISender sender) : ControllerBase
{
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var userGroups = await sender.Send(new GetUserGroupsQuery());
        return Ok(userGroups);
    }

    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetById(Guid id)
    {
        var userGroup = await sender.Send(new GetUserGroupByIdQuery{Id = id});
        return Ok(userGroup);
    }

    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateUserGroupCommand request)
    {
        var userGroupId = await sender.Send(request);
        return Ok(userGroupId);
    }

    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateUserGroupCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteUserGroupByIdCommand{Id = id});
        return Ok(success);
    }
}