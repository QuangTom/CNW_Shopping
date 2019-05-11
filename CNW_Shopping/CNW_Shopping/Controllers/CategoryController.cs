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
        ClientDbContext db = new ClientDbContext();
        // GET: Category
        public ActionResult Category()
        {
            var list = db.SanPhams.ToList();
            return View(list);
        }
    }
}