using Application.UseCases.Documents;
using Application.UseCases.Documents.CreateDocument;
using Application.UseCases.Documents.DeleteDocument;
using Application.UseCases.Documents.DownloadDocument;
using Application.UseCases.Documents.GetDocumentById;
using Application.UseCases.Documents.GetDocuments;
using Application.UseCases.Documents.UpdateDocument;
using Application.UseCases.Documents.UploadDocument;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SharedKernel.Constants;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class DocumentsController(ISender sender) : ControllerBase
{
    [Authorize(Policy = AppPolicy.GetAllDocuments)]
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var documents = await sender.Send(new GetDocumentsQuery());
        return Ok(documents);
    }

    [Authorize(Policy = AppPolicy.GetByIdDocument)]
    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetById(Guid id)
    {
        var document = await sender.Send(new GetDocumentByIdQuery{Id = id});
        return Ok(document);
    }

    [Authorize(Policy = AppPolicy.CreateDocument)]
    [HttpPost("Create")]
    public async Task<IActionResult> Create(CreateDocumentCommand request)
    {
        var documentId = await sender.Send(request);
        return Ok(documentId);
    }

    [Authorize(Policy = AppPolicy.UpdateDocument)]
    [HttpPut("Update")]
    public async Task<IActionResult> Update(UpdateDocumentCommand request)
    {
        var success = await sender.Send(request);
        return Ok(success);
    }

    [Authorize(Policy = AppPolicy.DeleteDocument)]
    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteDocumentByIdCommand{Id = id});
        return Ok(success);
    }
    
    [Authorize(Policy = AppPolicy.DownloadDocument)]
    [HttpGet("Download")]
    public async Task<IActionResult> Download([FromQuery] DownloadDocumentQuery request)
    {
        var url = await sender.Send(request);
        return Ok(url);
    }

    [Authorize(Policy = AppPolicy.UploadDocument)]
    [HttpGet("Upload")]
    public async Task<IActionResult> Upload([FromQuery] UploadDocumentQuery request)
    {
        var url = await sender.Send(request);
        return Ok(url);
    }
}