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
    }
}