using Domain.Aggregates;

namespace Application.DTOs.UserGroupPolicies;

public class UserGroupPolicyDTO
{
    public Guid Id { get; set; }
    public string Policy { get; set; }
    public UserGroup UserGroup { get; set; }
    
    
}