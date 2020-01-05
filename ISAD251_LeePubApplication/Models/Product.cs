using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ISAD251_Lee.Models
{
    public partial class Product
    {
        public Product()
        {
            OrderDetails = new HashSet<OrderDetails>();
        }

        public int ProductId { get; set; }
        public int CategoryId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public string QuantityPerUnit { get; set; }


        //Limits the entered amount to 1

        [Range(1, 1, ErrorMessage = "All Items are £1. Please Type in correct price")]
        public decimal Price { get; set; }
        public short UnitsInStock { get; set; }
        public short RestockLevel { get; set; }
        public bool? Available { get; set; }

        public virtual Category Category { get; set; }
        public virtual ICollection<OrderDetails> OrderDetails { get; set; }
    }
}
