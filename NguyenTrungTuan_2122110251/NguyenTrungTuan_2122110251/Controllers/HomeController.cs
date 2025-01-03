using NguyenTrungTuan_2122110251.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Security.Cryptography;
using NguyenTrungTuan_2122110251.Models;

namespace NguyenTrungTuan_2122110251.Controllers
{
    public class HomeController : Controller
    {
        QLSPEntities objcsdlspEntities =new QLSPEntities();
        public ActionResult Index()
        {
            HomeModel objHomeModel = new HomeModel();
            objHomeModel.ListCategory = objcsdlspEntities.Categories.ToList();
            objHomeModel.ListProduct= objcsdlspEntities.Products.ToList();
            return View(objHomeModel);
        }
        public ActionResult Content()
        {
            return View();
        }
        public ActionResult Component()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(User _user)
        {
            if (ModelState.IsValid)
            {
                var check = objcsdlspEntities.Users.FirstOrDefault(s => s.Email == _user.Email);
                if (check == null)
                {
                    _user.Password = GetMD5(_user.Password);
                    objcsdlspEntities.Configuration.ValidateOnSaveEnabled = false;
                    objcsdlspEntities.Users.Add(_user);
                    objcsdlspEntities.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    ViewBag.error = "Email already exists";
                    return View();
                }
            }
            return View("Index");
        }
        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = System.Text.Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;
            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");
            }
            return byte2String;
        }
    }
}