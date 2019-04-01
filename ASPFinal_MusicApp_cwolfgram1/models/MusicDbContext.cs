using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ASPFinal_MusicApp_cwolfgram1.models
{
    public class MusicDbContext : DbContext
    {
        public DbSet<PhysicalMusic> PhysicalMusics { get; set; }
    }
}