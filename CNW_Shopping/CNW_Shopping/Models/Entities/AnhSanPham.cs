namespace CNW_Shopping.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AnhSanPham")]
    public partial class AnhSanPham
    {
        [Key]
        public int MaAnh { get; set; }

        [StringLength(255)]
        public string Anh { get; set; }

        public int? MaSanPham { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
