using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ChatController : ControllerBase
{
    [HttpPost("Chat")]
    public async Task<IActionResult> Chat()
    {
        return Ok();
    }
}