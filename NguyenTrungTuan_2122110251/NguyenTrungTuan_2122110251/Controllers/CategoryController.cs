using NguyenTrungTuan_2122110251.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NguyenTrungTuan_2122110251.Controllers
{
    public class CategoryController : Controller
    {
        WebASPEntities db = new WebASPEntities();
        // GET: Category
        public ActionResult Category()
        {
            var listCategory = db.Categories.ToList();
            return View(listCategory);
        }
        public ActionResult ProductCategory(int Id)
        {
            var listProduct = db.Products.Where(n => n.CategoryId == Id).ToList();
            return View(listProduct);
        }
    }
}