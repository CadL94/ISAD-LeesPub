using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ISAD251_Lee.Models
{
    public partial class OrderDetails
    {
        public int? OrderId { get; set; }
        public int ProductId { get; set; }

        //Limits the entered amount to 1
        
        [Range(1, 1, ErrorMessage = "All Items are £1. Please enter correct price")]
        public decimal Price { get; set; }

        //Limits the entered amount to 1

        [Range(1, 1, ErrorMessage = "Only 1 item at a time")]
        public short Quantity { get; set; }
        public bool OrderStatus { get; set; }
        public int Id { get; set; }

        public virtual Orders Order { get; set; }
        public virtual Product Product { get; set; }
    }
}
