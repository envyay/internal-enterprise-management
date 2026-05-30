using Domain.Aggregates;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SharedKernel.Contants;

namespace Infrastructure.Data.Configurations;

public class UserConfiguration : IEntityTypeConfiguration<User>
{
    public void Configure(EntityTypeBuilder<User> builder)
    {
        builder.ToTable("Users");

        builder.HasKey(x => x.Id);
        builder.Property(x => x.Id).ValueGeneratedNever();

        builder.Property(x => x.FullName).HasMaxLength(255);

        builder.Property(x => x.Email).HasMaxLength(255);

        builder.Property(x => x.Status).HasConversion<int>().HasDefaultValue(UserStatus.Active);

        builder.HasMany(x => x.UserGroups).WithMany(x => x.Users).UsingEntity(x => x.ToTable("UserUserGroups"));
        
        builder.HasIndex(x => x.Email).IsUnique();
        builder.HasIndex(x => x.FullName);
    }
}