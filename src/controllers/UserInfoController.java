package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dbUtil.HibernateSF;
import models.DonationForm;
import models.UserInfo;
@Controller
public class UserInfoController {

	@RequestMapping("/registration")
	public String registration()
	{
		
		
		return "Registration";
	}
	
	@RequestMapping("/login")
	public String login()
	{
		
		return "Login";
	}
	//@ResponseBody()
	@RequestMapping("/loggedIn")
	public String logged(HttpServletRequest request, HttpSession sess)
	{
		
		Session session= HibernateSF.getSession().openSession();
		sess= request.getSession();
		String message = "No User Found with these credentials";
		request.setAttribute("message", message);
		List<UserInfo> uList = session.createQuery("from UserInfo").list();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		for(int i=0; i<uList.size();i++)
		{
			
			
		 if(uList.get(i).getEmail().equals(email)&& password.equals(password) )
			{  sess.setAttribute("email", email);
			sess.setAttribute("password", password);
			sess.setAttribute("user", uList.get(i));
			
			if(uList.get(i).getEmail().equals("Admin")&& uList.get(i).getPassword().equals("Admin"))
			{
				return "Admin";
			}
			else if(uList.get(i).getUserType().equals("Volunteer"))
				{
					Session session2= HibernateSF.getSession().openSession();
					List<DonationForm> donationList = session2.createQuery("from DonationForm").list();
					request.setAttribute("donationList", donationList);
					
					return "Volunteer";
				}
				else if(uList.get(i).getUserType().equals("Donor"))
				{
					return "Donation";
				}
				else if(uList.get(i).getUserType().equals("DonationSeeker"))
				{
					return "AskHelpForm";
				}
			}
		}
return "Login";
	}
	//@ResponseBody()
	@RequestMapping("/added")
	public String addUser(Model mod,HttpServletRequest request,HttpSession sess)
	{
		Session session= HibernateSF.getSession().openSession();
		UserInfo user = new UserInfo();
		String email = request.getParameter("email");
		sess.setAttribute("email", email);
		sess.setAttribute("volunteerId", user.getUserid());
		String message = "Email Already Exists";
		request.setAttribute("message", message);
		List<UserInfo> uList = session.createQuery("from UserInfo").list();
		boolean exists=false;
		for(int i=0; i<uList.size();i++)
		{
			if(uList.get(i).getEmail().equals(email))
			{exists =true;}
		}
		if(exists)
			return "Registration";
		else
		{
		String userType =request.getParameter("userType");
		int phone =Integer.parseInt(request.getParameter("phone"));
		user.setName(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		user.setEmail(request.getParameter("email"));
		user.setPhone(phone);
		user.setUserType(request.getParameter("userType"));
		mod.addAttribute("name", user.getName());
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
		 sess.setAttribute("email", request.getParameter("email"));
			sess.setAttribute("password", request.getParameter("password"));
			sess.setAttribute("volunteerId", user.getUserid());
		if(userType.equals("Volunteer"))
		{   
			Session session2= HibernateSF.getSession().openSession();
			List<DonationForm> donationList = session2.createQuery("from DonationForm").list();
			request.setAttribute("donationList", donationList);
			
			return "Volunteer";
		}
		else if(userType.equals("Donor"))
		{
			return "Donation";
		}
		else if(userType.equals("DonationSeeker"))
		{
			
			return "AskHelpForm";
		}
		}
		return "error";
	}
}
