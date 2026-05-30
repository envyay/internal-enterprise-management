using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Infrastructure.Data.Migrations
{
    /// <inheritdoc />
    public partial class RemoveDocumentSize : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "TicketUserGroups",
                schema: "IEM");

            migrationBuilder.DropColumn(
                name: "DateTime",
                schema: "IEM",
                table: "Tickets");

            migrationBuilder.DropColumn(
                name: "Size",
                schema: "IEM",
                table: "Documents");

            migrationBuilder.CreateIndex(
                name: "IX_Documents_CreatedBy",
                schema: "IEM",
                table: "Documents",
                column: "CreatedBy");

            migrationBuilder.CreateIndex(
                name: "IX_Documents_UpdatedBy",
                schema: "IEM",
                table: "Documents",
                column: "UpdatedBy");

            migrationBuilder.AddForeignKey(
                name: "FK_Documents_Users_CreatedBy",
                schema: "IEM",
                table: "Documents",
                column: "CreatedBy",
                principalSchema: "IEM",
                principalTable: "Users",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Documents_Users_UpdatedBy",
                schema: "IEM",
                table: "Documents",
                column: "UpdatedBy",
                principalSchema: "IEM",
                principalTable: "Users",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Documents_Users_CreatedBy",
                schema: "IEM",
                table: "Documents");

            migrationBuilder.DropForeignKey(
                name: "FK_Documents_Users_UpdatedBy",
                schema: "IEM",
                table: "Documents");

            migrationBuilder.DropIndex(
                name: "IX_Documents_CreatedBy",
                schema: "IEM",
                table: "Documents");

            migrationBuilder.DropIndex(
                name: "IX_Documents_UpdatedBy",
                schema: "IEM",
                table: "Documents");

            migrationBuilder.AddColumn<DateTime>(
                name: "DateTime",
                schema: "IEM",
                table: "Tickets",
                type: "timestamp with time zone",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Size",
                schema: "IEM",
                table: "Documents",
                type: "character varying(255)",
                maxLength: 255,
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateTable(
                name: "TicketUserGroups",
                schema: "IEM",
                columns: table => new
                {
                    TicketsId = table.Column<Guid>(type: "uuid", nullable: false),
                    UserGroupsId = table.Column<Guid>(type: "uuid", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TicketUserGroups", x => new { x.TicketsId, x.UserGroupsId });
                    table.ForeignKey(
                        name: "FK_TicketUserGroups_Tickets_TicketsId",
                        column: x => x.TicketsId,
                        principalSchema: "IEM",
                        principalTable: "Tickets",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_TicketUserGroups_UserGroups_UserGroupsId",
                        column: x => x.UserGroupsId,
                        principalSchema: "IEM",
                        principalTable: "UserGroups",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_TicketUserGroups_UserGroupsId",
                schema: "IEM",
                table: "TicketUserGroups",
                column: "UserGroupsId");
        }
    }
}
