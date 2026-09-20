using Application.DTOs.Users;

namespace Application.DTOs.Departments;

public class DepartmentDTO
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public List<UserDTO> Users { get; set; }
}