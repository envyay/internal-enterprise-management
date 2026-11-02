using Application.UseCases.UserGroupPolicies;
using Application.UseCases.UserGroups.GetUserGroups;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SharedKernel.Constants;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UserGroupPoliciesController(ISender sender) : ControllerBase
{
    [Authorize(Policy = AppPolicy.GetAllUserGroupPolicies)]
    [HttpGet("GetAll")]
    public async Task<IActionResult> GetAll()
    {
        var userGroupPolicies = await sender.Send(new GetUserGroupPoliciesQuery());
        return Ok(userGroupPolicies);
    }
}