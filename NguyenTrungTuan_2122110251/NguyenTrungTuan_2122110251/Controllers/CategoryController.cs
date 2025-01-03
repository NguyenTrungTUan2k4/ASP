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
        QLSPEntities objcsdlspEntities = new QLSPEntities();

        // GET: Category
        public ActionResult Category()
        {
            var lstCategory=objcsdlspEntities.Categories.ToList();
            return View(lstCategory);
        }
    }
}