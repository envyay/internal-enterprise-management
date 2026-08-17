
using Application.UseCases.UserGroups.CreateUserGroup;
using Application.UseCases.UserGroups.DeleteUserGroupById;
using Application.UseCases.UserGroups.GetUserGroupById;
using Application.UseCases.UserGroups.GetUserGroups;
using Application.UseCases.UserGroups.UpdateUserGroup;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SharedKernel.Constants;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UserGroupsController(ISender sender) : ControllerBase
{
    [Authorize(Policy = AppPolicy.GetAllUserGroups)]
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var userGroups = await sender.Send(new GetUserGroupsQuery());
        return Ok(userGroups);
    }

    [Authorize(Policy = AppPolicy.GetByIdUserGroup)]
    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetById(Guid id)
    {
        var userGroup = await sender.Send(new GetUserGroupByIdQuery{Id = id});
        return Ok(userGroup);
    }

    [Authorize(Policy = AppPolicy.CreateUserGroup)]
    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateUserGroupCommand request)
    {
        var userGroupId = await sender.Send(request);
        return Ok(userGroupId);
    }

    [Authorize(Policy = AppPolicy.UpdateUserGroup)]
    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateUserGroupCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [Authorize(Policy = AppPolicy.DeleteUserGroup)]
    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteUserGroupByIdCommand{Id = id});
        return Ok(success);
    }
}