using Microsoft.EntityFrameworkCore;
using StoredProcedures.Models;

namespace StoredProcedures.Data
{
    public class StoredProcDbContext : DbContext
    {
        public StoredProcDbContext(DbContextOptions<StoredProcDbContext> options)
            : base(options) { }

        public DbSet<Employee> Employees { get; set; }

    }
}
