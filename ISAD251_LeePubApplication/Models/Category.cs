using System;
using System.Collections.Generic;

namespace ISAD251_Lee.Models
{
    public partial class Category
    {
        public Category()
        {
            Product = new HashSet<Product>();
        }

        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string CategoryDescription { get; set; }
        public string CategoryImage { get; set; }
        public DateTime DateAdded { get; set; }

        public virtual ICollection<Product> Product { get; set; }
    }
}
