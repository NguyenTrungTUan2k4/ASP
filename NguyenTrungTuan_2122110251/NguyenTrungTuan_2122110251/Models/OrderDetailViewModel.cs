using NguyenTrungTuan_2122110251.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NguyenTrungTuan_2122110251.Models
{
    public class OrderDetailViewModel
    {
        public Order Order { get; set; }
        public List<OrderDetailInfo> OrderDetails { get; set; }
    }
    public class OrderDetailInfo
    {
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }
        public string ProductName { get; set; }
        public decimal TotalPrice { get; set; }
    }
}