using Domain.Aggregates;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SharedKernel.Constants;

namespace Infrastructure.Data.Configurations;

public class ProjectConfiguration : IEntityTypeConfiguration<Project>
{
    public void Configure(EntityTypeBuilder<Project> builder)
    {
        builder.ToTable("Projects");
        builder.HasKey(x => x.Id);
        builder.Property(x => x.Id).ValueGeneratedNever();
        builder.Property(x => x.Name).HasMaxLength(255);
        builder.Property(x => x.Description).HasMaxLength(500);
        builder.Property(x => x.Code).HasMaxLength(255);
        
        builder.Property(x => x.Status).HasConversion<int>().HasDefaultValue(ProjectStatus.Active);
        
        builder.Property(x => x.StartDate);
        builder.Property(x => x.EndDate);
        
        builder.HasMany(x => x.Users).WithMany(x => x.Projects).UsingEntity(x => x.ToTable("ProjectAssignee"));
        builder.HasMany(x => x.Tickets).WithOne(x => x.Project).HasForeignKey(x => x.ProjectId);
        builder.HasMany(x => x.TicketStatuses).WithOne(x => x.Project).HasForeignKey(x => x.ProjectId);
        
        builder.HasIndex(x => x.Name);
    }
}