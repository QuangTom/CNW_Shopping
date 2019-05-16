using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CNW_Shopping.Areas.Admin.Models.Entity;

using CNW_Shopping.Areas.Admin.Models.DAO;

namespace CNW_Shopping.Areas.Admin.Controllers
{
    public class DanhMucController : Controller
    {
        // GET: Admin/DanhMuc
        public ActionResult IndexDanhMuc()
        {
            var iplDanhMuc = new DanhMucDAO();
            var model = iplDanhMuc.ListDanhMuc();
            return View(model);
 
        }
        // GET: Admin/Demo/Create
        public ActionResult ThemDanhMuc()
        {
            return View();
        }

        // POST: Admin/Demo/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

    }
}