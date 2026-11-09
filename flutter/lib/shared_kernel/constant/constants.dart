enum DocumentReferenceType {
  public,
  department,
  ticket
}

abstract final class AppPolicy {
  // Chat
  static const String chat = 'Chat';
  static const String getConversations = 'GetConversations';
  static const String getChatMessagesByConversationId = 'GetChatMessagesByConversationId'; // xoa
  static const String createConversation = 'CreateConversation'; // xoa
  static const String createChatMessage = 'CreateChatMessage'; // xoa
  static const String deleteConversationById = 'DeleteConversationById';

  // UserGroupPolicy
  static const String getAllUserGroupPolicies = 'GetAllUserGroupPolicies';

  // User Group
  static const String getAllUserGroups = 'GetAllUserGroups';
  static const String getByIdUserGroup = 'GetByIdUserGroup'; // xoa
  static const String getUsersByUserGroupId = 'GetUsersByUserGroupId';
  static const String setUsersInUserGroup = 'SetUsersInUserGroup';
  static const String setPoliciesInUserGroup = 'SetPoliciesInUserGroup';
  static const String createUserGroup = 'CreateUserGroup';
  static const String updateUserGroup = 'UpdateUserGroup';
  static const String deleteUserGroup = 'DeleteUserGroup';
  static const String removePolicyFromUserGroup = 'RemovePolicyFromUserGroup'; // xoa
  static const String removeUserFromUserGroup = 'RemoveUserFromUserGroup'; // xoa

  // User
  static const String getAllUsers = 'GetAllUsers';
  static const String createUser = 'CreateUser';
  static const String getProjectsByUserId = 'GetProjectsByUserId'; // xoa
  static const String updateUser = 'UpdateUser';
  static const String deleteUser = 'DeleteUser';

  // Department
  static const String getAllDepartments = 'GetAllDepartments';
  static const String getByIdDepartment = 'GetByIdDepartment'; // xoa
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
  static const String getByIdTicket = 'GetByIdTicket'; // xoa
  static const String getUsersByTicketId = 'GetUsersByTicketId'; // xoa
  static const String setUsersInTicket = 'SetUsersInTicket';
  static const String getCommentsByTicketId = 'GetCommentsByTicketId'; // xoa
  static const String createTicket = 'CreateTicket';
  static const String updateTicket = 'UpdateTicket';
  static const String updateTicketByTicketStatus = 'UpdateTicketByTicketStatus'; // xoa
  static const String deleteTicket = 'DeleteTicket';

  // Ticket Status
  static const String getAllTicketStatuses = 'GetAllTicketStatuses'; // xoa
  static const String getByIdTicketStatus = 'GetByIdTicketStatus'; // xoa
  static const String getTicketsByTicketStatusId = 'GetTicketsByTicketStatusId';
  static const String createTicketStatus = 'CreateTicketStatus';
  static const String updateTicketStatus = 'UpdateTicketStatus';
  static const String deleteTicketStatus = 'DeleteTicketStatus';

  // Comment
  static const String getAllComments = 'GetAllComments'; // xoa
  static const String getByIdComment = 'GetByIdComment'; // xoa
  static const String createComment = 'CreateComment';
  static const String updateComment = 'UpdateComment'; // xoa
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