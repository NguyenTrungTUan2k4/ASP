﻿using NguyenTrungTuan_2122110251.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NguyenTrungTuan_2122110251.Models
{
    public class CartModel
    {
        public Product Product { get; set; }
        public int Quantity { get; set; }
    }
}