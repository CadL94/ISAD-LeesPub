using System;
using System.Collections.Generic;

namespace ISAD251_Lee.Models
{
    public partial class Tables
    {
        public Tables()
        {
            Orders = new HashSet<Orders>();
        }

        public byte TableId { get; set; }
        public string TableName { get; set; }
        public DateTime DateAdded { get; set; }

        public virtual ICollection<Orders> Orders { get; set; }
    }
}
