using Application.DTOs.Users;
using Domain.Aggregates;

namespace Application.DTOs.UserGroups;

public class UserGroupDTO
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public List<UserDTO> Users { get; set; }
}