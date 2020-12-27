﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopBanChuot.Models;
using PagedList;
using PagedList.Mvc;
namespace ShopBanChuot.Controllers
{
    public class SanPhamController : Controller
    {
        //
        // GET: /SanPham/
        ShopBanChuotEntities db = new ShopBanChuotEntities();
        /// <summary>
        /// hiển thị tất cả sản phẩm
        /// </summary>
        /// <returns></returns>
        public ActionResult Index(int sapxep = 0,int page = 1)
        {
            int PageSize = 9; // số sản phẩm trên một trang
            ViewBag.TongSoLuongSP = db.SANPHAMs.ToList().Count();
            
            if (sapxep == 0) // sắp xếp giá tăng dần
            {
                var listSP = db.SANPHAMs.OrderBy(n => n.GiamGia).ToPagedList(page, PageSize);
                ViewBag.sapxep = 0;
                return View(listSP);
            }
            else if (sapxep == 1) // sắp xếp giá giảm dần
            {
                var listSP = db.SANPHAMs.OrderByDescending(n => n.GiamGia).ToPagedList(page, PageSize);
                ViewBag.sapxep = 1;
                return View(listSP);
            }
            else // sắp xếp theo lượt xem 
            {
                var listSP = db.SANPHAMs.OrderByDescending(n => n.LuotXem).ToPagedList(page, PageSize);
                ViewBag.sapxep = 2;
                return View(listSP);
            }
            
        }

        public ActionResult ThongTinSanPham(int MaSP)
        {
            SANPHAM SP = db.SANPHAMs.SingleOrDefault(n => n.MaSP == MaSP);
            if (SP == null)
            {
                //trả về trang báo lỗi
                Response.StatusCode = 404;
                return null;
            }
            ViewBag.LoaiSP = db.LOAISANPHAMs.Single(n => n.MaLoaiSP == SP.MaLoaiSP).TenLoaiSP;
            ViewBag.ThuongHieu = db.THUONGHIEUx.Single(n => n.MaTH == SP.MaTH).TenTH;
            ViewBag.XuatXu = db.XUATXUs.Single(n => n.MaXX == SP.MaXX).TenXX;
            return View(SP);
        }
        // sản phẩm theo loại sản phẩm
        public ActionResult SanPhamTheoLoaiSanPham(int MaLoaiSP, int page = 1)
        {
            int PageSize = 9; // số sản phẩm trên một trang
            var listSP = db.SANPHAMs.Where(n => n.MaLoaiSP == MaLoaiSP).OrderBy(n => n.Gia).ToPagedList(page, PageSize);
            if (listSP == null)
            {
                ViewBag.Chuot = "Không có sản phẩm nào";
            }
            ViewBag.TongSoLuongSP = db.SANPHAMs.Where(n => n.MaLoaiSP == MaLoaiSP).ToList().Count();
            return View("Index", listSP);
        }
        // sản phẩm theo thương hiệu
        public ActionResult SanPhamTheoThuongHieu(int MaTH, int page = 1)
        {
            int PageSize = 9; // số sản phẩm trên một trang
            var listSP = db.SANPHAMs.Where(n => n.MaTH == MaTH).OrderBy(n => n.Gia).ToPagedList(page, PageSize);
            if(listSP == null)
            {
                ViewBag.Chuot = "Không có sản phẩm nào";
            }
            ViewBag.TongSoLuongSP = db.SANPHAMs.Where(n => n.MaTH == MaTH).ToList().Count();
            return View("Index",listSP);
        }
        // sản phẩm theo xuất xứ
        public ActionResult SanPhamTheoXuatXu(int MaXX, int page = 1)
        {
            int PageSize = 9; // số sản phẩm trên một trang
            var listSP = db.SANPHAMs.Where(n => n.MaXX == MaXX).OrderBy(n => n.Gia).ToPagedList(page, PageSize);
            if (listSP == null)
            {
                ViewBag.Chuot = "Không có sản phẩm nào";
            }
            ViewBag.TongSoLuongSP = db.SANPHAMs.Where(n => n.MaXX == MaXX).ToList().Count();
            return View("Index", listSP);
        }

        //Sản phẩm liên quan của sản phẩm
        public ActionResult SanPhamLienQuanPartial(int MaSP)
        {
            SANPHAM SP = db.SANPHAMs.SingleOrDefault(n => n.MaSP == MaSP);
            List<SANPHAM> listSanPhamLienQuan = new List<SANPHAM>();
            listSanPhamLienQuan = db.SANPHAMs.Where(n => n.MaLoaiSP == SP.MaLoaiSP).Take(3).ToList();
            return View(listSanPhamLienQuan);
        }

        public ActionResult KhoangGia(int KhoangGia = 0, int page = 1)
        {

            int pageSize = 9;
            if (KhoangGia == 0) // giá dưới 200k
            {
                var listSanPham = db.SANPHAMs.Where(n => n.GiamGia < 200000).OrderBy(n => n.GiamGia).ToPagedList(page,pageSize);
                ViewBag.TongSoLuongSP = db.SANPHAMs.Where(n => n.GiamGia < 200000).ToList().Count();
                return View("Index", listSanPham);
            }
            else if (KhoangGia == 1) // giá từ 200k tới 500k
            {
                var listSanPham = db.SANPHAMs.Where(n => n.GiamGia >=200000 & n.GiamGia <500000).OrderBy(n => n.GiamGia).ToPagedList(page, pageSize);
                ViewBag.TongSoLuongSP = db.SANPHAMs.Where(n => n.GiamGia >= 200000 & n.GiamGia < 500000).ToList().Count();
                return View("Index", listSanPham);
            }
            else //giá trên 500k
            {
                var listSanPham = db.SANPHAMs.Where(n => n.GiamGia >= 500000).OrderBy(n => n.GiamGia).ToPagedList(page, pageSize);
                ViewBag.TongSoLuongSP = db.SANPHAMs.Where(n => n.GiamGia >= 500000).ToList().Count();
                return View("Index", listSanPham);
            }

        }
	}


}