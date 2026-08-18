using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Infrastructure.Data.Migrations
{
    /// <inheritdoc />
    public partial class updateuserGroupPolicytable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_UserGroupPolicies_UserGroupId",
                schema: "IEM",
                table: "UserGroupPolicies");

            migrationBuilder.CreateIndex(
                name: "IX_UserGroupPolicies_UserGroupId",
                schema: "IEM",
                table: "UserGroupPolicies",
                column: "UserGroupId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_UserGroupPolicies_UserGroupId",
                schema: "IEM",
                table: "UserGroupPolicies");

            migrationBuilder.CreateIndex(
                name: "IX_UserGroupPolicies_UserGroupId",
                schema: "IEM",
                table: "UserGroupPolicies",
                column: "UserGroupId",
                unique: true);
        }
    }
}
