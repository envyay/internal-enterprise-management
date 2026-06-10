using Application.UseCases.Users.CreateUser;
using Application.UseCases.Users.GetUsers;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UsersController(ISender sender) : ControllerBase
{
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var users = await sender.Send(new GetUsersQuery());
        return Ok(users);
    }

    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateUserCommand request)
    {
        var userId = await sender.Send(request);
        return Ok(userId);
    }
}