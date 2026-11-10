enum DocumentReferenceType {
  public,
  department,
  ticket
}

abstract final class AppPolicy {
  // Chat
  static const String chat = 'Chat';
  static const String getConversations = 'GetConversations';
  static const String deleteConversationById = 'DeleteConversationById';

  // UserGroupPolicy
  static const String getAllUserGroupPolicies = 'GetAllUserGroupPolicies';

  // User Group
  static const String getAllUserGroups = 'GetAllUserGroups';
  static const String getUsersByUserGroupId = 'GetUsersByUserGroupId';
  static const String setUsersInUserGroup = 'SetUsersInUserGroup';
  static const String setPoliciesInUserGroup = 'SetPoliciesInUserGroup';
  static const String createUserGroup = 'CreateUserGroup';
  static const String updateUserGroup = 'UpdateUserGroup';
  static const String deleteUserGroup = 'DeleteUserGroup';

  // User
  static const String getAllUsers = 'GetAllUsers';
  static const String createUser = 'CreateUser';
  static const String updateUser = 'UpdateUser';
  static const String deleteUser = 'DeleteUser';

  // Department
  static const String getAllDepartments = 'GetAllDepartments';
  static const String createDepartment = 'CreateDepartment';
  static const String updateDepartment = 'UpdateDepartment';
  static const String deleteDepartment = 'DeleteDepartment';
  static const String setUsersInDepartment = 'SetUsersInDepartment';

  // Project
  static const String getAllProjects = 'GetAllProjects';
  static const String getByIdProject = 'GetByIdProject';
  static const String getTicketStatusesByProjectId = 'GetTicketStatusesByProjectId';
  static const String getUsersByProjectId = 'GetUsersByProjectId';
  static const String createProject = 'CreateProject';
  static const String updateProject = 'UpdateProject';
  static const String deleteProject = 'DeleteProject';
  static const String setUsersInProject = 'SetUsersInProject';

  // Document
  static const String updateDocument = 'UpdateDocument';
  static const String uploadDocument = 'UploadDocument';

  // Ticket
  static const String getAllTickets = 'GetAllTickets';
  static const String setUsersInTicket = 'SetUsersInTicket';
  static const String createTicket = 'CreateTicket';
  static const String updateTicket = 'UpdateTicket';
  static const String deleteTicket = 'DeleteTicket';

  // Ticket Status
  static const String getTicketsByTicketStatusId = 'GetTicketsByTicketStatusId';
  static const String createTicketStatus = 'CreateTicketStatus';
  static const String updateTicketStatus = 'UpdateTicketStatus';
  static const String deleteTicketStatus = 'DeleteTicketStatus';

  // Comment
  static const String createComment = 'CreateComment';
  static const String deleteComment = 'DeleteComment';

  static const List<String> policies = [
    // Chat
    chat,
    getConversations,
    deleteConversationById,

    // UserGroupPolicy
    getAllUserGroupPolicies,

    // User Group
    getAllUserGroups,
    getUsersByUserGroupId,
    setUsersInUserGroup,
    setPoliciesInUserGroup,
    createUserGroup,
    updateUserGroup,
    deleteUserGroup,

    // User
    getAllUsers,
    createUser,
    updateUser,
    deleteUser,

    // Department
    getAllDepartments,
    createDepartment,
    updateDepartment,
    deleteDepartment,
    setUsersInDepartment,

    // Project
    getAllProjects,
    getByIdProject,
    getTicketStatusesByProjectId,
    getUsersByProjectId,
    createProject,
    updateProject,
    deleteProject,
    setUsersInProject,

    // Document
    updateDocument,
    uploadDocument,

    // Ticket
    getAllTickets,
    setUsersInTicket,
    createTicket,
    updateTicket,
    deleteTicket,

    // Ticket Status
    getTicketsByTicketStatusId,
    createTicketStatus,
    updateTicketStatus,
    deleteTicketStatus,

    // Comment
    createComment,
    deleteComment,
  ];
}