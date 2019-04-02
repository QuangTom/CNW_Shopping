namespace CNW_Shopping.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            ChiTietDonHang = new HashSet<ChiTietDonHang>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaSanPham { get; set; }

        public int? MaDanhMuc { get; set; }

        [StringLength(50)]
        public string TenSanPham { get; set; }

        public int? DonGia { get; set; }

        [StringLength(255)]
        public string MoTaSanPham { get; set; }

        public int? MaSize { get; set; }

        public int? MaAnh { get; set; }

        public virtual AnhSanPham AnhSanPham { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHang { get; set; }

        public virtual DanhMuc DanhMuc { get; set; }

        public virtual Size Size { get; set; }
    }
}
