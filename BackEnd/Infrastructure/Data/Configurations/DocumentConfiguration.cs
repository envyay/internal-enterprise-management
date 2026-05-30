using Domain.Aggregates;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SharedKernel.Contants;

namespace Infrastructure.Data.Configurations;

public class DocumentConfiguration : IEntityTypeConfiguration<Document>
{
    public void Configure(EntityTypeBuilder<Document> builder)
    {
        builder.ToTable("Documents");
        builder.HasKey(x => x.Id);
        builder.Property(x => x.Id).ValueGeneratedNever();
        builder.Property(x => x.BucketName).HasMaxLength(255);
        builder.Property(x => x.ObjectName).HasMaxLength(255);
        builder.Property(x => x.Size).HasMaxLength(255);
        builder.Property(x => x.Status).HasConversion<int>().HasDefaultValue(DocumentStatus.Active);
        builder.Property(x => x.Extension).HasMaxLength(255);
    }
}