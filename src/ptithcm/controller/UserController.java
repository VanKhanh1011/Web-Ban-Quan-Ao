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
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.entity.Product;
import poly.entity.User;

@Transactional
@Controller
public class UserController {
	@Autowired
	SessionFactory factory;
	/*@RequestMapping("/user")
	public String user(ModelMap model){
		Session session = factory.getCurrentSession();
		String hql="FROM User";
		Query query= session.createQuery(hql);
		List<User> list=query.list();
		model.addAttribute("user", list);
		return "user";
	}*/
	@RequestMapping(value = "DangKy", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("user", new User());
		return "DangKy";
	}

	@RequestMapping(value = "DangKy", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("user") User user, BindingResult errors,@RequestParam("password1") String password1) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (user.getHo().trim().length() == 0) {
			errors.rejectValue("ho", "user", "Vui lòng nhập ho");
		}
		if (user.getTen().trim().length() == 0) {
			errors.rejectValue("ten", "user", "Vui long nhap Ten");

		}
		if (user.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "user", "Vui lòng nhập email");
		}
		if (user.getMatkhau().trim().length() == 0) {
			errors.rejectValue("matkhau", "user", "Vui lòng nhập mat khau");
		}
		try {
			if(!user.getMatkhau().equals(password1))
			{
				model.addAttribute("message", "Mật khẩu không trùng khớp!");
				return "DangKy";
			}
			if (errors.hasErrors()) {
				model.addAttribute("message", "Vui lòng sửa các lỗi sau");
			} else {
				session.save(user);
				t.commit();
				model.addAttribute("message", "Đăng Ký thành công!");
				model.addAttribute("message", "Đăng nhập đúng");
			}

		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Đăng Ký thất bại!");
		} finally {
			session.close();
		}
		return "DangKy";
	}
	@RequestMapping("ad")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		model.addAttribute("users", list);
		return "ad";
	}
	/*
	@RequestMapping(value = "delete/{email}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("email") String email) {
		Session session = factory.getCurrentSession();
		try {
			User u = (User) session.get(User.class, email);
			session.delete(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/ad.htm";
	}
	*/
	String bien;
	
	
	@RequestMapping(value = "DangNhap", method = RequestMethod.GET)
	public String dangnhap(ModelMap model) {
		model.addAttribute("user", new User());
		return "DangNhap";
	}

	@RequestMapping(value="DangNhap", method=RequestMethod.POST)
	public String index(ModelMap model,
			@RequestParam("email") String email,
			@RequestParam("matkhau") String matkhau,
			@ModelAttribute("user") User user){
		if(email.equals("tranducvankhanh@gmail.com")&&matkhau.equals("123")){
			bien="1";
			return "redirect:/ad.htm";
		}
		Session session=factory.getCurrentSession();
		String hql="FROM User u WHERE u.email='"+email+"' AND u.matkhau='"+matkhau+"'";
		Query query=session.createQuery(hql);
		List<User> list=query.list();
		int count=0;
		for(User u : list){
			count++;
		}
		if(count==1){
			for(User u : list){
				user.setHo(u.getHo());
				user.setTen(u.getTen());
				user.setEmail(u.getEmail());
				user.setMatkhau(u.getMatkhau());
			}
			bien="1";
			model.addAttribute("listUser",list);
			return "ThongTinDangNhap";
		}
		else{
			model.addAttribute("message", "Sai Email hoặc Mật khẩu");
			return "DangNhap";
		}
	}
	
	@RequestMapping("DangNhap")
	public String Login(ModelMap model){
		if(bien.equals("0")){
			return "DangNhap";
		}
		else{
				return "ThongTinDangNhap.htm";
		}
	}
	@RequestMapping(value = "delete/{email}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable String email) {
		Session session = factory.getCurrentSession();
//		try {
			User acc = (User) session.get(User.class, email);
			// System.out.println(user_name);
			session.delete(acc);
            session.flush();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return "redirect:/ad.htm";
	}

	/*@RequestMapping(value = "update1/{email}", method = RequestMethod.POST)
	public String createOrUpdate(ModelMap model, @ModelAttribute("user") User user, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if (user.getHo().trim().length() == 0) {
			errors.rejectValue("ho", "user", "Vui lòng nhập họ");
		}
		if (user.getTen().trim().length() == 0) {
			errors.rejectValue("ten", "user", "Vui lòng nhập tên");
		}
		
		if (user.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "user", "Vui lòng nhập email");
		}
		try {
			if (errors.hasErrors()) {
				model.addAttribute("message", "Vui lòng nhập đầy đủ các trường");
			} else {
				session.saveOrUpdate(user);
				t.commit();
				model.addAttribute("message", "Chỉnh sửa thành công");
			}
			
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại");
		} finally {
			session.flush();
			session.close();
		}
		return "ThongTinDangNhap.htm";
	}

	@RequestMapping(value = "update1/{email}", method = RequestMethod.GET)
	public String edit(ModelMap model, @PathVariable("email") String email, @ModelAttribute("user") User users) {
		User user = this.getUser(email);
		model.addAttribute("userdetail", user);
		return "update";
	}
	public User getUser(String email) {
		System.out.print(email);
		Session session = factory.getCurrentSession();
		String hql = "FROM User u WHERE u.email = :email";
		Query query = session.createQuery(hql).setParameter("email", email);
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		return list.size() > 0 ? list.get(0) : null;
	}*/
	@RequestMapping(value = "update1/{email}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("email")String s) {
		//model.addAttribute("user", new Account());
		Session session = factory.openSession();
		
		User acc = (User) session.get(User.class, s);
		model.addAttribute("user", acc);
		return "update";
	}
	
	@RequestMapping(value = "update1/{email}", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("user") User acc) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(acc);
		return "redirect:/ad.htm";
	}
	
}
