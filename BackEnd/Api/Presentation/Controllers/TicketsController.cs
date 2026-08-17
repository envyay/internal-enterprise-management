using Application.UseCases.Tickets.CreateTicket;
using Application.UseCases.Tickets.DeleteTicket;
using Application.UseCases.Tickets.GetCommentByTicketId;
using Application.UseCases.Tickets.GetTicketById;
using Application.UseCases.Tickets.GetTicketsQuery;
using Application.UseCases.Tickets.UpdateTicket;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SharedKernel.Constants;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class TicketsController(ISender sender) : ControllerBase
{
    [Authorize(Policy = AppPolicy.GetAllTickets)]
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var tickets = await sender.Send(new GetTicketsQuery());
        return Ok(tickets);
    }

    [Authorize(Policy = AppPolicy.GetByIdTicket)]
    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetById(Guid id)
    {
        var ticket = await sender.Send(new GetTicketByIdQuery{Id = id});
        return Ok(ticket);
    }

    [Authorize(Policy = AppPolicy.GetCommentsByTicketId)]
    [HttpGet("{id:guid}/Comments")]
    public async Task<IActionResult> GetCommentsByTicketId(Guid id)
    {
        var comments = await sender.Send(new GetCommentByTicketIdQuery { TicketId = id });
        return Ok(comments);
    }

    [Authorize(Policy = AppPolicy.CreateTicket)]
    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateTicketCommand request)
    {
       var ticketId =  await sender.Send(request);
        return Ok(ticketId);
    }

    [Authorize(Policy = AppPolicy.UpdateTicket)]
    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateTicketCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [Authorize(Policy = AppPolicy.DeleteTicket)]
    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteTicketCommandById { Id = id });
        return Ok(success);
    }
}