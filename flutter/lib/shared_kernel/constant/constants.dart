enum DocumentReferenceType {
  public,
  department,
  ticket
}

abstract final class AppPolicy {
  // Chat
  static const String chat = 'Chat';
  static const String getConversations = 'GetConversations';
  static const String getChatMessagesByConversationId = 'GetChatMessagesByConversationId';
  static const String createConversation = 'CreateConversation';
  static const String createChatMessage = 'CreateChatMessage';
  static const String deleteConversationById = 'DeleteConversationById';

  // UserGroupPolicy
  static const String getAllUserGroupPolicies = 'GetAllUserGroupPolicies';

  // User Group
  static const String getAllUserGroups = 'GetAllUserGroups';
  static const String getByIdUserGroup = 'GetByIdUserGroup';
  static const String getUsersByUserGroupId = 'GetUsersByUserGroupId';
  static const String setUsersInUserGroup = 'SetUsersInUserGroup';
  static const String setPoliciesInUserGroup = 'SetPoliciesInUserGroup';
  static const String createUserGroup = 'CreateUserGroup';
  static const String updateUserGroup = 'UpdateUserGroup';
  static const String deleteUserGroup = 'DeleteUserGroup';
  static const String removePolicyFromUserGroup = 'RemovePolicyFromUserGroup';
  static const String removeUserFromUserGroup = 'RemoveUserFromUserGroup';

  // User
  static const String getAllUsers = 'GetAllUsers';
  static const String createUser = 'CreateUser';
  static const String getProjectsByUserId = 'GetProjectsByUserId';
  static const String updateUser = 'UpdateUser';
  static const String deleteUser = 'DeleteUser';

  // Department
  static const String getAllDepartments = 'GetAllDepartments';
  static const String getByIdDepartment = 'GetByIdDepartment';
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
  static const String getAllDocuments = 'GetAllDocuments';
  static const String getByIdDocument = 'GetByIdDocument';
  static const String getDocumentsByDepartment = 'GetDocumentsByDepartment';
  static const String getDocumentsByDepartments = 'GetDocumentsByDepartments';
  static const String getDocumentsByTicket = 'GetDocumentsByTicket';
  static const String getDocumentsByTickets = 'GetDocumentsByTickets';
  static const String createDocument = 'CreateDocument';
  static const String updateDocument = 'UpdateDocument';
  static const String deleteDocument = 'DeleteDocument';
  static const String downloadDocument = 'DownloadDocument';
  static const String uploadDocument = 'UploadDocument';

  // Ticket
  static const String getAllTickets = 'GetAllTickets';
  static const String getByIdTicket = 'GetByIdTicket';
  static const String getUsersByTicketId = 'GetUsersByTicketId';
  static const String setUsersInTicket = 'SetUsersInTicket';
  static const String getCommentsByTicketId = 'GetCommentsByTicketId';
  static const String createTicket = 'CreateTicket';
  static const String updateTicket = 'UpdateTicket';
  static const String updateTicketByTicketStatus = 'UpdateTicketByTicketStatus';
  static const String deleteTicket = 'DeleteTicket';

  // Ticket Status
  static const String getAllTicketStatuses = 'GetAllTicketStatuses';
  static const String getByIdTicketStatus = 'GetByIdTicketStatus';
  static const String getTicketsByTicketStatusId = 'GetTicketsByTicketStatusId';
  static const String createTicketStatus = 'CreateTicketStatus';
  static const String updateTicketStatus = 'UpdateTicketStatus';
  static const String deleteTicketStatus = 'DeleteTicketStatus';

  // Comment
  static const String getAllComments = 'GetAllComments';
  static const String getByIdComment = 'GetByIdComment';
  static const String createComment = 'CreateComment';
  static const String updateComment = 'UpdateComment';
  static const String deleteComment = 'DeleteComment';

  static const List<String> policies = [
    // Chat
    chat,
    getConversations,
    getChatMessagesByConversationId,
    createConversation,
    createChatMessage,
    deleteConversationById,

    // UserGroupPolicy
    getAllUserGroupPolicies,

    // User Group
    getAllUserGroups,
    getByIdUserGroup,
    getUsersByUserGroupId,
    setUsersInUserGroup,
    setPoliciesInUserGroup,
    createUserGroup,
    updateUserGroup,
    deleteUserGroup,
    removePolicyFromUserGroup,
    removeUserFromUserGroup,

    // User
    getAllUsers,
    createUser,
    getProjectsByUserId,
    updateUser,
    deleteUser,

    // Department
    getAllDepartments,
    getByIdDepartment,
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
    getAllDocuments,
    getByIdDocument,
    getDocumentsByDepartment,
    getDocumentsByDepartments,
    getDocumentsByTicket,
    getDocumentsByTickets,
    createDocument,
    updateDocument,
    deleteDocument,
    downloadDocument,
    uploadDocument,

    // Ticket
    getAllTickets,
    getByIdTicket,
    getUsersByTicketId,
    setUsersInTicket,
    getCommentsByTicketId,
    createTicket,
    updateTicket,
    updateTicketByTicketStatus,
    deleteTicket,

    // Ticket Status
    getAllTicketStatuses,
    getByIdTicketStatus,
    getTicketsByTicketStatusId,
    createTicketStatus,
    updateTicketStatus,
    deleteTicketStatus,

    // Comment
    getAllComments,
    getByIdComment,
    createComment,
    updateComment,
    deleteComment,
  ];
}