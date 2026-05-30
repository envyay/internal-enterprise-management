using Domain.Aggregates;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Data.Configurations;

public class UserGroupConfiguration : IEntityTypeConfiguration<UserGroup>
{
    public void Configure(EntityTypeBuilder<UserGroup> builder)
    {
        builder.ToTable("UserGroups");
        
        builder.HasKey(x => x.Id);
        builder.Property(x => x.Id).ValueGeneratedNever();
        
        builder.Property(x => x.Name).HasMaxLength(255);
        
        builder.HasMany(x => x.UserGroupPolicies).WithOne(x => x.UserGroup).HasForeignKey(x => x.UserGroupId);
        
        builder.HasIndex(x => x.Name);
    }
}