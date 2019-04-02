using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CNW_Shopping.Models.Entities;

namespace CNW_Shopping.Controllers
{
    public class CategoryController : Controller
    {
        Db_Shopping db = new Db_Shopping();
        // GET: Category
        public ActionResult Category()
        {
            var list = db.SanPham.ToList();
            return View();
        }
    }
}