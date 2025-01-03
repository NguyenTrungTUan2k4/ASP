using NguyenTrungTuan_2122110251.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NguyenTrungTuan_2122110251.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        QLSPEntities objcsdlspEntities = new QLSPEntities();

        public ActionResult Detail(int Id)
        {
            var objProduct=objcsdlspEntities.Products.Where(n=>n.Id==Id).FirstOrDefault();
            return View(objProduct);
        }
        public ActionResult ListingGrid()
        {
            return View();
        }
        public ActionResult ListingList()
        {
            return View();
        }

    }
}