using Domain.Aggregates;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Data.Configurations;

public class TicketConfiguration : IEntityTypeConfiguration<Ticket>
{
    public void Configure(EntityTypeBuilder<Ticket> builder)
    {
        builder.ToTable("Tickets");
        builder.HasKey(x => x.Id);
        builder.Property(x => x.Id).ValueGeneratedNever();
        
        builder.Property(x => x.Title).HasMaxLength(255);
        builder.Property(x => x.Description).HasMaxLength(500);
        // builder.Property(x => x.Comment).HasMaxLength(500);
        
        builder.HasMany(x => x.Users).WithMany(x => x.Tickets).UsingEntity(x => x.ToTable("TicketAssignee"));
        builder.HasOne(x => x.TicketStatus).WithMany(x => x.Tickets).HasForeignKey(x => x.TicketStatusId);
        
        builder.HasIndex(x => x.Title);
    }
}