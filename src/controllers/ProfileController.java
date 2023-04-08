package controllers;

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
public class ProfileController {
	@RequestMapping("/profile")
	public String getProfile(HttpSession sess) {
		UserInfo user = (UserInfo)sess.getAttribute("user");
		sess.setAttribute("user", user);
		
		return "Profile";
	}
	
	@RequestMapping("/editprofile")
	public String editProfile(HttpSession sess) {
		UserInfo user = (UserInfo)sess.getAttribute("user");
		sess.setAttribute("user", user);
		
		return "EditProfile";
	}
	
	@RequestMapping("/updateprofile")
	public String updateProfile(HttpServletRequest request, HttpSession sess) {
		Session session= HibernateSF.getSession().openSession();
		UserInfo user = (UserInfo)sess.getAttribute("user");
		sess.setAttribute("user", user);
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int phone = Integer.parseInt(request.getParameter("phone"));
		
		Transaction tx = session.beginTransaction();
		UserInfo updated_user = session.get(UserInfo.class, user.getUserid());
		updated_user.setName(name);
		updated_user.setEmail(email);
		updated_user.setPhone(phone);
		session.update(updated_user);
		tx.commit();
		session.close();
		
		sess.setAttribute("user", updated_user);
		return "Profile";
	}
	

}