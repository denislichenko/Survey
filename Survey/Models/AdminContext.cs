using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Survey
{
    public class AdminContext : DbContext
    {
        public AdminContext() : base("DBConnection")
        { }
        public DbSet<Admin> Admins { get; set; }
    }
}