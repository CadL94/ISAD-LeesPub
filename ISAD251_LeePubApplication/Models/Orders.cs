using System;
using System.Collections.Generic;

namespace ISAD251_Lee.Models
{
    public partial class Orders
    {
        public Orders()
        {
            OrderDetails = new HashSet<OrderDetails>();
        }

        public int OrderId { get; set; }
        public byte TableId { get; set; }
        public DateTime? OrderDate { get; set; }

        public virtual Tables Table { get; set; }
        public virtual ICollection<OrderDetails> OrderDetails { get; set; }
    }
}
