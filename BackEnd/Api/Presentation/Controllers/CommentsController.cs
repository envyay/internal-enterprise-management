using Application.UseCases.Comments.CreateComment;
using Application.UseCases.Comments.DeleteCommentById;
using Application.UseCases.Comments.GetCommentById;
using Application.UseCases.Comments.GetComments;
using Application.UseCases.Comments.UpdateComment;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class CommentsController(ISender sender) : ControllerBase
{
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var comments = await sender.Send(new GetCommentsQuery());
        return Ok(comments);
    }

    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetById(Guid id)
    {
        var comment = await sender.Send(new GetCommentQuery{Id = id});
        return Ok(comment);
    }

    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateCommentCommand request)
    {
        var commentId = await sender.Send(request);
        return Ok(commentId);
    }

    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateCommentCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteCommentByIdCommand{Id = id});
        return Ok(success);
    }
}