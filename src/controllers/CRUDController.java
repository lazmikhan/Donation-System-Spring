package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dbUtil.HibernateSF;
import models.DonationForm;
import models.UserInfo;

@Controller
public class CRUDController {
	
	@RequestMapping("/crud")
	public String crud(HttpServletRequest request, HttpSession sess) {
		Session session= HibernateSF.getSession().openSession();
		
		List<UserInfo> uList = session.createQuery("from UserInfo").list();
		request.setAttribute("uList", uList);
		return "CRUD";
	}
	@RequestMapping("/deleteuser")
	public String deleteUser(HttpServletRequest request, HttpSession sess) {
		int id = Integer.parseInt(request.getParameter("id"));
		Session session= HibernateSF.getSession().openSession();
		session.beginTransaction();
		UserInfo deleteUser = session.get(UserInfo.class, id);
		session.delete(deleteUser);
		session.getTransaction().commit();
		session.close();
		
		return "CRUD";
	}
	@RequestMapping("/adduser")
	public String addUser() {
		
		return "Create_user";
	}
	
	@RequestMapping("/useradded")
		public String userAdded(Model mod, HttpServletRequest request, HttpSession sess) {
		
		Session session= HibernateSF.getSession().openSession();
		UserInfo user = new UserInfo();
		String email = request.getParameter("email");
		String message = "Email Already Exists";
		request.setAttribute("message", message);
		List<UserInfo> uList = session.createQuery("from UserInfo").list();
		boolean exists=false;
		for(int i=0; i<uList.size();i++)
		{
			if(uList.get(i).getEmail().equals(email))
			{
			  exists =true;
			 
			}
		}
		if(exists)
			return "Create_user";
		else
		{
		String userType =request.getParameter("userType");
		int phone =Integer.parseInt(request.getParameter("phone"));
		user.setName(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		user.setEmail(request.getParameter("email"));
		user.setPhone(phone);
		user.setUserType(request.getParameter("userType"));
//		mod.addAttribute("name", user.getName());
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
		}
		return "CRUD";
	}
	
	@RequestMapping("/edituser")
	public String edituser(HttpServletRequest request) {
		Session session= HibernateSF.getSession().openSession();
		int id = Integer.parseInt(request.getParameter("id"));
		UserInfo user = session.get(UserInfo.class, id);
		request.setAttribute("user", user);
		request.setAttribute("id", id);
		return "Update_user";
	}
	
	@RequestMapping("/userupdated")
	public String userAdded(HttpServletRequest request, HttpSession sess) {
		Session session= HibernateSF.getSession().openSession();
		UserInfo user = (UserInfo)sess.getAttribute("user");
		UserInfo updated_user = session.get(UserInfo.class, user.getUserid());
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String userType = request.getParameter("userType");
		
		Transaction tx = session.beginTransaction();
		updated_user.setName(name);
		updated_user.setEmail(email);
		updated_user.setPhone(phone);
		updated_user.setUserType(userType);
		session.update(updated_user);
		tx.commit();
		session.close();
		return "CRUD";
	}
}
