using Application.UseCases.Users.CreateUser;
using Application.UseCases.Users.GetUsers;
using Application.UseCases.Users.LoginRequest;
using Application.UseCases.Users.LoginVerify;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UsersController(ISender sender) : ControllerBase
{
    [Authorize]
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var users = await sender.Send(new GetUsersQuery());
        return Ok(users);
    }
    
    [Authorize]
    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateUserCommand request)
    {
        var userId = await sender.Send(request);
        return Ok(userId);
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