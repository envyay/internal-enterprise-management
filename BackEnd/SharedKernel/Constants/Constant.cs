namespace SharedKernel.Constants;

public class Constant
{
}

public enum UserStatus
{
    InActive = 0,
    Active = 1
}

public enum UserType
{
    Admin = 0,
    User = 1
}

public enum ProjectStatus
{
    InActive = 0,
    Active = 1,
    Completed = 2,
    OnHold = 3,
    Cancelled = 4
}

public enum DocumentStatus
{
    InActive = 0,
    Active = 1
}

public static class AppPolicy
{
    // User Group
    public const string GetAllUserGroups = nameof(GetAllUserGroups);
    public const string GetByIdUserGroup = nameof(GetByIdUserGroup);
    public const string CreateUserGroup = nameof(CreateUserGroup);
    public const string UpdateUserGroup = nameof(UpdateUserGroup);
    public const string DeleteUserGroup = nameof(DeleteUserGroup);

    // User
    public const string GetAllUsers = nameof(GetAllUsers);
    public const string CreateUser = nameof(CreateUser);

    // Department
    public const string GetAllDepartments = nameof(GetAllDepartments);
    public const string GetByIdDepartment = nameof(GetByIdDepartment);
    public const string CreateDepartment = nameof(CreateDepartment);
    public const string UpdateDepartment = nameof(UpdateDepartment);
    public const string DeleteDepartment = nameof(DeleteDepartment);

    // Project
    public const string GetAllProjects = nameof(GetAllProjects);
    public const string GetByIdProject = nameof(GetByIdProject);
    public const string GetTicketStatusesByProjectId = nameof(GetTicketStatusesByProjectId);
    public const string CreateProject = nameof(CreateProject);
    public const string UpdateProject = nameof(UpdateProject);
    public const string DeleteProject = nameof(DeleteProject);

    // Document
    public const string GetAllDocuments = nameof(GetAllDocuments);
    public const string GetByIdDocument = nameof(GetByIdDocument);
    public const string CreateDocument = nameof(CreateDocument);
    public const string UpdateDocument = nameof(UpdateDocument);
    public const string DeleteDocument = nameof(DeleteDocument);
    public const string DownloadDocument = nameof(DownloadDocument);
    public const string UploadDocument = nameof(UploadDocument);

    // Ticket
    public const string GetAllTickets = nameof(GetAllTickets);
    public const string GetByIdTicket = nameof(GetByIdTicket);
    public const string GetCommentsByTicketId = nameof(GetCommentsByTicketId);
    public const string CreateTicket = nameof(CreateTicket);
    public const string UpdateTicket = nameof(UpdateTicket);
    public const string DeleteTicket = nameof(DeleteTicket);

    // Ticket Status
    public const string GetAllTicketStatuses = nameof(GetAllTicketStatuses);
    public const string GetByIdTicketStatus = nameof(GetByIdTicketStatus);
    public const string CreateTicketStatus = nameof(CreateTicketStatus);
    public const string UpdateTicketStatus = nameof(UpdateTicketStatus);
    public const string DeleteTicketStatus = nameof(DeleteTicketStatus);

    // Comment
    public const string GetAllComments = nameof(GetAllComments);
    public const string GetByIdComment = nameof(GetByIdComment);
    public const string CreateComment = nameof(CreateComment);
    public const string UpdateComment = nameof(UpdateComment);
    public const string DeleteComment = nameof(DeleteComment);
}