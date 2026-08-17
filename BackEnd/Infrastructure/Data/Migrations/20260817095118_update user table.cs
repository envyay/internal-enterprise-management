using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Infrastructure.Data.Migrations
{
    /// <inheritdoc />
    public partial class updateusertable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Users_FullName",
                schema: "IEM",
                table: "Users");

            migrationBuilder.AddColumn<bool>(
                name: "IsProfileCompleted",
                schema: "IEM",
                table: "Users",
                type: "boolean",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsProfileCompleted",
                schema: "IEM",
                table: "Users");

            migrationBuilder.CreateIndex(
                name: "IX_Users_FullName",
                schema: "IEM",
                table: "Users",
                column: "FullName");
        }
    }
}
