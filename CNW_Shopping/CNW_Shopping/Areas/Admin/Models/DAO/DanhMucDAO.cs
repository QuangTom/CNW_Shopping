using CNW_Shopping.Areas.Admin.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;

namespace CNW_Shopping.Areas.Admin.Models.DAO
{
    public class DanhMucDAO
    {
        private AdminDbContext context = null;
        public DanhMucDAO()
        {
            context = new AdminDbContext();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public List<DanhMuc> ListDanhMuc()
        {
            var list = context.Database.SqlQuery<DanhMuc>("SP_XemDanhMuc").ToList();
            return list;
        }


    }
}