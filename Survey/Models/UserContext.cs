using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Survey
{
    public class UserContext : DbContext
    {
        public UserContext() : base("DBConnection")
        { }
        public DbSet<User> Users { get; set; }
    }
}