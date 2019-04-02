using CNW_Shopping.Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CNW_Shopping.Controllers
{
    public class HomeController : Controller
    {
        Db_Shopping db = new Db_Shopping();
        public ActionResult Index()
        {
            //var list = db.Database.SqlQuery<SanPham>("exec XemSP").ToList();
            var list = db.SanPham.ToList();
            return View(list);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}