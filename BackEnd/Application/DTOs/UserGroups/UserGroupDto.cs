using Application.DTOs.UserGroupPolicies;
using Application.DTOs.Users;
using Domain.Aggregates;

namespace Application.DTOs.UserGroups;

public class UserGroupDto
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public List<UserDto> Users { get; set; }
    public List<UserGroupPolicyDto> UserGroupPolicies { get; set; }
}