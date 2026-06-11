using SharedKernel.Contants;

namespace Application.DTOs.Users;

public class UserDTO
{
    public Guid Id { get; set; }
    public string FullName { get; set; }
    public string Email { get; set; }
    public UserStatus Status { get; set; }
}