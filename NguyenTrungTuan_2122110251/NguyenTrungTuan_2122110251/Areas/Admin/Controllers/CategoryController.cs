using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using PagedList;
using NguyenTrungTuan_2122110251.Context;

namespace NguyenTrungTuan_2122110251.Areas.Admin.Controllers
{
    public class CategoryController : Controller
    {
        WebASPEntities db = new WebASPEntities();

        // GET: Admin/Category
        public ActionResult Index(string Search, string currentFilter, int? page)
        {
            var listCategory = new List<Category>();
            if (Search != null)
            {
                page = 1;
            }
            else
            {
                Search = currentFilter;
            }
            if (!String.IsNullOrEmpty(Search))
            {
                listCategory = db.Categories.Where(n => n.Name.Contains(Search)).ToList();
            }
            else
            {
                listCategory = db.Categories.ToList();
            }
            ViewBag.CurrentFilter = Search;
            int pageSize = 5;
            int pageNumber = (page ?? 1);
            listCategory = listCategory.OrderByDescending(n => n.Id).ToList();
            return View(listCategory.ToPagedList(pageNumber, pageSize));
        }


        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Category category)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    // Kiểm tra nếu có ảnh được tải lên
                    if (category.ImageUpLoad != null && category.ImageUpLoad.ContentLength > 0)
                    {
                        // Tạo tên file duy nhất dựa trên thời gian
                        string fileName = Path.GetFileNameWithoutExtension(category.ImageUpLoad.FileName);
                        string extension = Path.GetExtension(category.ImageUpLoad.FileName);
                        fileName = fileName + "_" + long.Parse(DateTime.Now.ToString("yyyyMMddhhmmss")) + extension;

                        // Gán tên file vào thuộc tính Avartar
                        category.Avartar = fileName;

                        // Lưu file vào thư mục cụ thể
                        string path = Path.Combine(Server.MapPath("~/Content/images/brand/"), fileName);
                        category.ImageUpLoad.SaveAs(path);
                    }

                    // Gán thời gian tạo (CreatedOnUtc)
                    category.CreatedOnUtc = DateTime.Now;

                    // Thêm vào cơ sở dữ liệu
                    db.Categories.Add(category);
                    db.SaveChanges();

                    return RedirectToAction("Index");
                }
                catch (Exception)
                {
                    ModelState.AddModelError("", "Không tạo được thương hiệu.");
                }
            }
            return View(category);
        }

        [HttpGet]
        public ActionResult Details(int id)
        {
            var category = db.Categories.Where(n => n.Id == id).FirstOrDefault();
            return View(category);
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            var category = db.Categories.Where(n => n.Id == id).FirstOrDefault();
            return View(category);
        }

        [HttpPost]
        public ActionResult Edit(Category category)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    if (category.ImageUpLoad != null && category.ImageUpLoad.ContentLength > 0)
                    {
                        string fileName = Path.GetFileNameWithoutExtension(category.ImageUpLoad.FileName);
                        string extension = Path.GetExtension(category.ImageUpLoad.FileName);
                        string newFileName = fileName + "_" + DateTime.Now.Ticks + extension;

                        string path = Path.Combine(Server.MapPath("~/Content/images/category/"), newFileName);
                        category.ImageUpLoad.SaveAs(path);
                        category.Avartar = newFileName;
                    }
                    else
                    {
                        db.Entry(category).Property(x => x.Avartar).IsModified = false;
                    }

                    category.UpdatedOnUtc = DateTime.Now;
                    db.Entry(category).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", "Lỗi: " + ex.Message);
                }
            }
            return View(category);
        }



        [HttpGet]
        public ActionResult Delete(int id)
        {
            var category = db.Categories.Where(n => n.Id == id).FirstOrDefault();
            return View(category);
        }

        [HttpPost]
        public ActionResult Delete(Category category)
        {
            try
            {
                var categoryToDelete = db.Categories.Where(n => n.Id == category.Id).FirstOrDefault();
                db.Categories.Remove(categoryToDelete);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch (Exception)
            {
                ModelState.AddModelError("", "Error occurred while deleting the category.");
                return View(category);
            }
        }
    }
}
