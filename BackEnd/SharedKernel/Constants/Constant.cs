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

public enum DocumentReferenceType
{
    Public = 0,
    Department = 1,
    Ticket = 2
}

public static class AppPolicy
{
    // Chat
    public const string Chat = nameof(Chat);
    public const string GetConversations = nameof(GetConversations);
    public const string DeleteConversationById = nameof(DeleteConversationById);
    
    // UserGroupPolicy
    public const string GetAllUserGroupPolicies = nameof(GetAllUserGroupPolicies);
    
    // User Group
    public const string GetAllUserGroups = nameof(GetAllUserGroups);
    public const string GetUsersByUserGroupId = nameof(GetUsersByUserGroupId);
    public const string SetUsersInUserGroup = nameof(SetUsersInUserGroup);
    public const string SetPoliciesInUserGroup = nameof(SetPoliciesInUserGroup);
    public const string CreateUserGroup = nameof(CreateUserGroup);
    public const string UpdateUserGroup = nameof(UpdateUserGroup);
    public const string DeleteUserGroup = nameof(DeleteUserGroup);

    // User
    public const string GetAllUsers = nameof(GetAllUsers);
    public const string CreateUser = nameof(CreateUser);
    public const string UpdateUser = nameof(UpdateUser);
    public const string DeleteUser = nameof(DeleteUser);

    // Department
    public const string GetAllDepartments = nameof(GetAllDepartments);
    public const string CreateDepartment = nameof(CreateDepartment);
    public const string UpdateDepartment = nameof(UpdateDepartment);
    public const string DeleteDepartment = nameof(DeleteDepartment);
    public const string SetUsersInDepartment = nameof(SetUsersInDepartment);

    // Project
    public const string GetAllProjects = nameof(GetAllProjects);
    public const string GetByIdProject = nameof(GetByIdProject);
    public const string GetTicketStatusesByProjectId = nameof(GetTicketStatusesByProjectId);
    public const string GetUsersByProjectId = nameof(GetUsersByProjectId);
    public const string CreateProject = nameof(CreateProject);
    public const string UpdateProject = nameof(UpdateProject);
    public const string DeleteProject = nameof(DeleteProject);
    public const string SetUsersInProject = nameof(SetUsersInProject);

    // Document
    public const string GetAllDocuments = nameof(GetAllDocuments);
    public const string GetByIdDocument = nameof(GetByIdDocument);
    public const string GetDocumentsByDepartment = nameof(GetDocumentsByDepartment);
    public const string GetDocumentsByDepartments = nameof(GetDocumentsByDepartments);
    public const string GetDocumentsByTicket = nameof(GetDocumentsByTicket);
    public const string GetDocumentsByTickets = nameof(GetDocumentsByTickets);
    public const string CreateDocument = nameof(CreateDocument);
    public const string UpdateDocument = nameof(UpdateDocument);
    public const string DeleteDocument = nameof(DeleteDocument);
    public const string DownloadDocument = nameof(DownloadDocument);
    public const string UploadDocument = nameof(UploadDocument);

    // Ticket
    public const string GetAllTickets = nameof(GetAllTickets);
    public const string SetUsersInTicket = nameof(SetUsersInTicket);
    public const string CreateTicket = nameof(CreateTicket);
    public const string UpdateTicket = nameof(UpdateTicket);
    public const string DeleteTicket = nameof(DeleteTicket);

    // Ticket Status
    public const string GetTicketsByTicketStatusId = nameof(GetTicketsByTicketStatusId);
    public const string CreateTicketStatus = nameof(CreateTicketStatus);
    public const string UpdateTicketStatus = nameof(UpdateTicketStatus);
    public const string DeleteTicketStatus = nameof(DeleteTicketStatus);

    // Comment
    public const string CreateComment = nameof(CreateComment);
    public const string DeleteComment = nameof(DeleteComment);

    public static readonly string[] Policies =
    [
        // Chat
        Chat,
        GetConversations,
        DeleteConversationById,
        
        // UserGroupPolicy
        GetAllUserGroupPolicies,
        
        // User Group
        GetAllUserGroups,
        GetUsersByUserGroupId,
        SetUsersInUserGroup,
        SetPoliciesInUserGroup,
        CreateUserGroup,
        UpdateUserGroup,
        DeleteUserGroup,

        // User
        GetAllUsers,
        CreateUser,
        UpdateUser,
        DeleteUser,

        // Department
        GetAllDepartments,
        CreateDepartment,
        UpdateDepartment,
        DeleteDepartment,
        SetUsersInDepartment,

        // Project
        GetAllProjects,
        GetByIdProject,
        GetTicketStatusesByProjectId,
        GetUsersByProjectId,
        CreateProject,
        UpdateProject,
        DeleteProject,
        SetUsersInProject,

        // Document
        GetAllDocuments,
        GetByIdDocument,
        GetDocumentsByDepartment,
        GetDocumentsByDepartments,
        GetDocumentsByTicket,
        GetDocumentsByTickets,
        CreateDocument,
        UpdateDocument,
        DeleteDocument,
        DownloadDocument,
        UploadDocument,

        // Ticket
        GetAllTickets,
        SetUsersInTicket,
        CreateTicket,
        UpdateTicket,
        DeleteTicket,

        // Ticket Status
        GetTicketsByTicketStatusId,
        CreateTicketStatus,
        UpdateTicketStatus,
        DeleteTicketStatus,

        // Comment
        CreateComment,
        DeleteComment,
    ];
}