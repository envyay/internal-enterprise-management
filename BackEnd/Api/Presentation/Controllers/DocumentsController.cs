using Application.UseCases.Documents;
using Application.UseCases.Documents.DeleteDocument;
using Application.UseCases.Documents.DownloadDocument;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class DocumentsController(ISender sender) : ControllerBase
{
    [HttpGet("Download")]
    public async Task<IActionResult> Download([FromQuery] DownloadDocumentQuery request)
    {
        var url = await sender.Send(request);
        return Ok(url);
    }
    
    [HttpDelete("Delete")]
    public async Task<IActionResult> Delete(DeleteDocumentCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }
}