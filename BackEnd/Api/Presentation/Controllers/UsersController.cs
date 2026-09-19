using Application.UseCases.Users.CreateUser;
using Application.UseCases.Users.DeleteUser;
using Application.UseCases.Users.GetUsers;
using Application.UseCases.Users.LoginRequest;
using Application.UseCases.Users.LoginVerify;
using Application.UseCases.Users.UpdateUser;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SharedKernel.Constants;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UsersController(ISender sender) : ControllerBase
{
    [Authorize(Policy = AppPolicy.GetAllUsers)]
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var users = await sender.Send(new GetUsersQuery());
        return Ok(users);
    }
    
    [Authorize(Policy = AppPolicy.CreateUser)]
    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateUserCommand request)
    {
        var userId = await sender.Send(request);
        return Ok(userId);
    }

    [Authorize(Policy = AppPolicy.UpdateUser)]
    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateUserCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [Authorize(Policy = AppPolicy.DeleteUser)]
    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> Delete(Guid id)
    {
        var success = await sender.Send(new DeleteUserCommand{Id = id});
        return Ok(success);
    }

    [AllowAnonymous]
    [HttpPost("LoginRequest")]
    public async Task<IActionResult> LoginRequest(LoginRequestCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }
    
    [AllowAnonymous]
    [HttpPost("LoginVerify")]
    public async Task<IActionResult> LoginVerify(LoginVerifyCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }
}