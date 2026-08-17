namespace SharedKernel.Constants;

public class Constant
{
}

public enum UserStatus
{
    InActive = 0,
    Active = 1
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
}