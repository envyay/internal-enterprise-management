using Domain.Aggregates;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Data.Configurations;

public class UserGroupPolicyConfiguration : IEntityTypeConfiguration<UserGroupPolicy>
{
    public void Configure(EntityTypeBuilder<UserGroupPolicy> builder)
    {
        builder.ToTable("UserGroupPolicies");
        
        builder.HasKey(x => x.Id);
        builder.Property(x => x.Id).ValueGeneratedNever();
        
        builder.Property(x => x.Policy).HasMaxLength(255);
    }
}