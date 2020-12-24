package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.entity.Product;


@Transactional
@Controller
public class ProductController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("AoNam")
	public String index1(ModelMap model) {
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> list = query.list();
			//model.addAttribute("products", list);
			List<Product> newList = new ArrayList<>();
			for (int i = 0; i < 10; i++) {
				newList.add(list.get(i));
			}
			model.addAttribute("pro", newList);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "AoNam";
	}
	@RequestMapping("WinterCollection")
	public String index2(ModelMap model) {
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> list = query.list();
			//model.addAttribute("products", list);
			List<Product> newList = new ArrayList<>();
			for (int i =54; i <62; i++) {
				newList.add(list.get(i));
			}
			model.addAttribute("pro", newList);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "WinterCollection";
	}
	@RequestMapping("QuanNam")
	public String index3(ModelMap model) {
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> list = query.list();
			//model.addAttribute("products", list);
			List<Product> newList = new ArrayList<>();
			for (int i =33; i <41; i++) {
				newList.add(list.get(i));
			}
			model.addAttribute("pro", newList);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "QuanNam";
	}
	@RequestMapping("GiayDepNam")
	public String index4(ModelMap model) {
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> list = query.list();
			//model.addAttribute("products", list);
			List<Product> newList = new ArrayList<>();
			for (int i=12; i<22; i++) {
				newList.add(list.get(i));
			}
			model.addAttribute("pro", newList);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "GiayDepNam";
	}
	@RequestMapping("SuitNam")
	public String index5(ModelMap model) {
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> list = query.list();
			//model.addAttribute("products", list);
			List<Product> newList = new ArrayList<>();
			for (int i=41; i<51; i++) {
				newList.add(list.get(i));
			}
			model.addAttribute("pro", newList);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "SuitNam";
	}
	@RequestMapping("PhuKien")
	public String index6(ModelMap model) {
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> list = query.list();
			//model.addAttribute("products", list);
			List<Product> newList = new ArrayList<>();
			for (int i=24; i<33; i++) {
				newList.add(list.get(i));
			}
			model.addAttribute("pro", newList);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "PhuKien";
	}
	@RequestMapping("sp")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("product", list);
		return "sp";
	}
	@RequestMapping(value = "delete1/{proid}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("proid") String proid) {
		Product pr;
		Session session = factory.getCurrentSession();
		pr = (Product) session.load(Product.class, proid);
		session.delete(pr);
		session.flush();
		
		return "redirect:/sp.htm";
	}
	@RequestMapping(value = "update11/{proid}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("proid")String s) {
		
		Session session = factory.openSession();
//		model.addAttribute("product", new Product());
		Product ac = (Product) session.get(Product.class, s);
		model.addAttribute("product", ac);
		return "updatesp";
	}
	
	@RequestMapping(value = "update11/{proid}", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("product") Product ac) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(ac);
		return "redirect:/sp.htm";
	}
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("pr", new Product());
		return "insert";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("pr") Product sp,BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (sp.getProid().trim().length() == 0) {
			errors.rejectValue("proid", "sp", "Vui lòng nhập mã sp");
		}
		if (sp.getProname().trim().length() == 0) {
			errors.rejectValue("proname", "sp", "Vui lòng nhập tên ");
		}
		if (sp.getPrice()==0) {
			errors.rejectValue("price", "sp", "Vui lòng nhập gia SP");
		}
		if (sp.getImage().trim().length()==0) {
			errors.rejectValue("image", "sp", "Vui lòng nhập ten hinh anh");
		}
		if (sp.getIsValid()==null) {
			errors.rejectValue("isValid", "sp", "Vui lòng nhập trang thai ");
		}
		
		
		try {
			if (errors.hasErrors()) {
				model.addAttribute("message", "Vui lòng sửa các lỗi sau");
			} else {
				session.save(sp);
				t.commit();
				model.addAttribute("message", "them thanh cong !");
				return "redirect:sp.htm";
			}
		}catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		return "redirect:/insert";
	}
	List<Cart> list = new ArrayList<Cart>();

	@ModelAttribute("listGioHang")
	public List<Cart> getListGioHang() {

		return list;
	}

	@RequestMapping("shopping")
	public String shopping(Model model,@RequestParam("id") String id, @RequestParam("name") String name, @RequestParam("gia") float gia,
			@RequestParam("image") String image) {

		boolean isExist = false;
		for (Cart item : list) {
			if (item.getIdSanPham().equals(id) ) {
				item.setSoLuong(item.getSoLuong() + 1);
				isExist = true;
				break;
			}
		}
		if (!isExist) {
			Cart ghi = new Cart();
			ghi.setIdSanPham(id);
			ghi.setTenSanPham(name);
			ghi.setGiaSanPham(gia);
			ghi.setSoLuong(1);
			ghi.setImage(image);
			list.add(ghi);
		}
      model.addAttribute("tongTien",this.tinhTongtien(list));
		return "shopping";
	}
	@RequestMapping("deletecart")
	public String deletecart(Model model,@RequestParam("idSanPham") String idSanPham){
		int k=0;
		for(int i=0; i<list.size();i++){
			if(list.get(i).getIdSanPham().equals(idSanPham)){
				k=i;
			}
		}
		
		list.remove(k);
		 model.addAttribute("tongTien",this.tinhTongtien(list));
		return "shopping";	
	}
	public float tinhTongtien (List<Cart> list) {
		float tongTien=0;
		for(Cart item1: list) {
			tongTien=tongTien+item1.getGiaSanPham()*item1.getSoLuong();
		}
		return tongTien;
	}
}
