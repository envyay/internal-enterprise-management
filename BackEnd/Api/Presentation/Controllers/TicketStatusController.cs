using Application.UseCases.TicketStatuses.CreateTicketStatus;
using Application.UseCases.TicketStatuses.DeleteTicketStatus;
using Application.UseCases.TicketStatuses.GetTicketStatusById;
using Application.UseCases.ticketStatuses.GetTicketStatuses;
using Application.UseCases.TicketStatuses.UpdateTicketStatus;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class TicketStatusController(ISender sender) : ControllerBase
{
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var ticketStatuses = await sender.Send(new GetTicketStatusesQuery());
        return Ok(ticketStatuses);
    }

    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetById(Guid id)
    {
        var ticketStatus = await sender.Send(new GetTicketStatusByIdQuery());
        return Ok(ticketStatus);
    }

    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateTicketStatusCommand request)
    {
        var ticketStatusId = await sender.Send(request);
        return Ok(ticketStatusId);
    }

    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateTicketStatusCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteTicketStatusCommand{Id = id});
        return Ok(success);
    }
}