using Application.DTOs.Users;

namespace Application.DTOs.Departments;

public class DepartmentDto
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public string? Head { get; set; }
    public int MemberCount { get; set; }
    public List<UserDto>? Users { get; set; }
}