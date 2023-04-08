package controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dbUtil.HibernateSF;
import dbUtil.HibernateSF2;
import models.DonationForm;
import models.FailedForm;
import models.FeedbackForm;
import models.HelpForm;
import models.UserInfo;

@Controller
public class HomeController {
	//@ResponseBody()

	@RequestMapping("/allfeedback")
	public String allFeedback(HttpServletRequest request)
	{
		Session session= HibernateSF.getSession().openSession();
		List<FeedbackForm> feedbackData = session.createQuery("from FeedbackForm").list();
		request.setAttribute("feedbackData", feedbackData);
		
		return "viewFeedback";
	}
@RequestMapping("/")

public String root2(Model mod)
{
	mod.addAttribute("username", "LazmiKhan");
	
	return "Registration";
}
@RequestMapping("/feedbackForm")
public String feedbackForm()
{
	
return "Feedback";	
}

@RequestMapping("/addFeedback")
public String addFeedback(HttpServletRequest request)
{
	String feedbackName =request.getParameter("feedbackName");
	String feedbackEmail=request.getParameter("feedbackEmail");
	String feedbackMessage=request.getParameter("feedbackMessage");
	request.setAttribute("fMessage", "Feedback Was Added ,Thank You!");
	Session session= HibernateSF.getSession().openSession();
	FeedbackForm feedback = new FeedbackForm();
	feedback.setName(feedbackName);
	feedback.setEmail(feedbackEmail);
	feedback.setMessage(feedbackMessage);
	session.beginTransaction();
	session.save(feedback);
	session.getTransaction().commit();
	session.close();
	
return "Feedback";	
}

@RequestMapping("/allfailedForm")

public String failedFormPage(HttpServletRequest request)
{
	
	Session session3= HibernateSF.getSession().openSession();
	List<FailedForm> failed = session3.createQuery("from FailedForm").list();
	request.setAttribute("failedForm", failed);
	return "AllFailedForm";
}
@RequestMapping("/helprequestPage")
public String helpRequestPage(HttpServletRequest request)
{
	Session session2= HibernateSF2.getSession().openSession();
	List<HelpForm> help = session2.createQuery("from HelpForm").list();
	request.setAttribute("helpList", help);
return "HelpRequest";	
}
@RequestMapping("/helprequest")
public String helpRequest( HttpServletRequest request)

{   	int idHelp = Integer.parseInt(request.getParameter("idHelp"));
String status = request.getParameter("status");
	Session session2= HibernateSF2.getSession().openSession();
	List<HelpForm> help = session2.createQuery("from HelpForm").list();
	request.setAttribute("helpList", help);
	HelpForm hform = session2.get(HelpForm.class, idHelp);
	hform.setStatus(status);
	session2.beginTransaction();
	session2.update(hform);
	session2.getTransaction().commit();
	session2.close();
	
	
return "HelpRequest";
}
@RequestMapping("/report")
public String report( HttpServletRequest request)
{
	Session session= HibernateSF.getSession().openSession();
	List<DonationForm> dList = session.createQuery("from DonationForm").list();
	request.setAttribute("donationSize", dList.size());
	Session session3= HibernateSF.getSession().openSession();
	List<FailedForm> failed = session3.createQuery("from FailedForm").list();
	request.setAttribute("failedFormSize", failed.size());
	Session session2= HibernateSF2.getSession().openSession();
	List<HelpForm> help = session2.createQuery("from HelpForm").list();
	request.setAttribute("helpNumber", help.size());
return "Report";	
}
@ResponseBody()
@RequestMapping("/thankPage")
public String thankYouPage(HttpServletRequest request)
{  
	int id =Integer.parseInt(request.getParameter("thankid"));
	Session session= HibernateSF.getSession().openSession();
	
	DonationForm hform = session.get(DonationForm.class, id);
	hform.setDelivered("delivered");
	session.beginTransaction();
	session.update(hform);
	session.getTransaction().commit();
	session.close();
	
	
	
	return "Thank You !!";
}
@RequestMapping("/helpStatus")
public String helpStatus(HttpSession sess,HttpServletRequest request)
{
	sess=request.getSession();
	String email =(String)sess.getAttribute("email");
	Session session= HibernateSF.getSession().openSession();
	
	
	
	List<DonationForm> dList = session.createQuery("from DonationForm").list();
	ArrayList<DonationForm> donationFormList = new ArrayList<DonationForm>() ;
	for(int i=0; i<dList.size();i++)
	{
		if(dList.get(i).getSeekerEmail().equals(email))
		{
			donationFormList.add(dList.get(i));
			
		}
		
	}
	request.setAttribute("donationFormList", donationFormList);
	return "HelpStatus";
	}
//@ResponseBody()
@RequestMapping("/deliverToSeeker")
public String deliverToSeeker(HttpSession sess,HttpServletRequest request)
{
	int id = Integer.parseInt(request.getParameter("seekerId"));
	String seekerEmail = request.getParameter("seekerEmail");
	Session session= HibernateSF2.getSession().openSession();
	List<HelpForm> hList = session.createQuery("from HelpForm").list();
	HelpForm hform = session.get(HelpForm.class, id);
	hform.setDeliveryStatus("collected");
	session.beginTransaction();
	session.update(hform);
	session.getTransaction().commit();
	session.close();
	
	sess= request.getSession();
	String donerID = (String) sess.getAttribute("donerID");
	String email = (String)sess.getAttribute("email");
	Session session2= HibernateSF.getSession().openSession();
	List<DonationForm> donationList = session2.createQuery("from DonationForm").list();
	int donerIDInt = Integer.parseInt(donerID);
	DonationForm donation = session2.get(DonationForm.class, donerIDInt);
    donation.setSeekerEmail(seekerEmail);
    session2.beginTransaction();
	session2.update(donation);
	session2.getTransaction().commit();
	session2.close();
	request.setAttribute("donation", donation);
	//if()
	return "Delivered";
			}
@RequestMapping("/deliveryCollected")
public String deliveryCollected(HttpServletRequest request, HttpSession sess)
{
	 int id = Integer.parseInt(request.getParameter("id"));
	 String time = request.getParameter("time");
	 String idP = request.getParameter("id");
	 String donerID = request.getParameter("donerID");
	 sess= request.getSession();
	 sess.setAttribute("donerID", donerID);
		Session session= HibernateSF.getSession().openSession();
	DonationForm dform = session.get(DonationForm.class, id);
	dform.setDelivered("collected");
	dform.setTime(time);
	session.beginTransaction();
	session.update(dform);
	session.getTransaction().commit();
	session.close();
	Session session2= HibernateSF2.getSession().openSession();
	List<HelpForm> hList = session2.createQuery("from HelpForm").list();
	request.setAttribute("hList", hList);
	//ArrayList<HelpForm> dFormList = new ArrayList<HelpForm>() ;
return "DeliveryCollected";	
}
@RequestMapping("/deliveryAccepted")
public String deliveryAccepted(HttpServletRequest request,HttpSession s)
{
 int id = Integer.parseInt(request.getParameter("id"));
 String volunteerEmail = request.getParameter("volunteerEmail");
	Session session= HibernateSF.getSession().openSession();
DonationForm dform = session.get(DonationForm.class, id);
dform.setDelivered("accepted");

dform.setAcceptedVolunteer(volunteerEmail);
session.beginTransaction();
session.update(dform);
session.getTransaction().commit();
session.close();

Session session2= HibernateSF.getSession().openSession();
List<DonationForm> dList = session2.createQuery("from DonationForm").list();
ArrayList<DonationForm> dFormList = new ArrayList<DonationForm>() ;
for(int i=0; i<dList.size();i++)
{
	if(dList.get(i).getAcceptedVolunteer().equals(volunteerEmail))
	{
		dFormList.add(dList.get(i));
		
	}
	
}
request.setAttribute("dFormList", dFormList);
//return "donations"+dFormList;
return "AcceptDelivery";	
}

@RequestMapping("/donationAdded")
public String donationAdd(HttpServletRequest request)
{
	String foodName = request.getParameter("foodName");
	String location = request.getParameter("location");
	String phoneNo = request.getParameter("phoneNo");
	String foodDesc = request.getParameter("foodDesc");
	request.setAttribute("donationMsg", "Thanks For the kind gesture- Please Pick Up the rider's call");
	Session session= HibernateSF.getSession().openSession();
	DonationForm donationData = new DonationForm();
	donationData.setFoodName(foodName);
	donationData.setLocation(location);
	donationData.setPhoneNo(phoneNo);
	donationData.setFoodDesc(foodDesc);
	donationData.setDelivered("No");
	donationData.setHelpaccepted("no");
	donationData.setTime("null");
	donationData.setAcceptedVolunteer("null");
	donationData.setSeekerEmail("null");
	session.beginTransaction();
	session.save(donationData);
	session.getTransaction().commit();
	session.close();
	Session session2= HibernateSF.getSession().openSession();
	List<DonationForm> donationList = session2.createQuery("from DonationForm").list();
	request.setAttribute("donationList", donationList);
	
	return "Donation";
	
	
	
	}
@RequestMapping("/volunteer")
public String volunteer(HttpServletRequest request)
{
	Session session2= HibernateSF.getSession().openSession();
	List<DonationForm> donationList = session2.createQuery("from DonationForm").list();
	request.setAttribute("donationList", donationList);
	
	return "Volunteer";
	
	}

@RequestMapping("/deliveryFailed")
public String failedDelivery()
{
	
	return "FailedForm";
	}

@RequestMapping("/addFailedForm")
public String failedForm(HttpSession sess,HttpServletRequest request)
{ String volunteerEmail = (String) sess.getAttribute("email");
String failedReason = request.getParameter("failedReason");
String option = request.getParameter("option");
request.setAttribute("failedmsg", "Form Submitted");
Session session= HibernateSF.getSession().openSession();
FailedForm fForm = new FailedForm();
fForm.setVolunteerEmail(volunteerEmail);
fForm.setFailedReason(failedReason);
fForm.setOption(option);
session.beginTransaction();
session.save(fForm);
session.getTransaction().commit();
session.close();
	return "FailedForm";
	}

@RequestMapping("/allApplication")
public String helpApplication(HttpServletRequest request)
{
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String occupation = request.getParameter("occupation");
    String reason = request.getParameter("reason");
    String address = request.getParameter("address");
    String typeOfHelp = request.getParameter("typeOfHelp");
    String dob = request.getParameter("dob");
	Session session= HibernateSF2.getSession().openSession();
	HelpForm data = new HelpForm();
	data.setFname(fname);
	data.setLname(lname);
	data.setGender(gender);
	data.setEmail(email);
	data.setPhone(phone);
	data.setOccupation(occupation);
	data.setReason(reason);
	data.setAddress(address);
	data.setTypeOfHelp(typeOfHelp);
	data.setDob(dob);
	data.setDeliveryStatus("no");
	data.setStatus("pending");
	session.beginTransaction();
	session.save(data);
	session.getTransaction().commit();
	session.close();
	Session session2= HibernateSF2.getSession().openSession();
	ArrayList<HelpForm> userFormList = new ArrayList<HelpForm>() ;
	List<HelpForm> formList = session2.createQuery("from HelpForm").list();
	
	for(int i=0; i<formList.size();i++)
	{
		if(formList.get(i).getEmail().equals(email))
		{
			userFormList.add(formList.get(i));
			
		}
	}
	
	request.setAttribute("userFormList", userFormList);
//	return "these forms"+userFormList;
	return "ApplicationSubmit";
}
@RequestMapping("/allApp")
public String allApp(HttpServletRequest request,HttpSession sess)
{
	sess= request.getSession();
	String email =(String)sess.getAttribute("email");
	Session session2= HibernateSF2.getSession().openSession();
	ArrayList<HelpForm> userFormList = new ArrayList<HelpForm>() ;
	List<HelpForm> formList = session2.createQuery("from HelpForm").list();
	
	for(int i=0; i<formList.size();i++)
	{
		if(formList.get(i).getEmail().equals(email))
		{
			userFormList.add(formList.get(i));
			
		}
	}
	
	request.setAttribute("userFormList", userFormList);
//	return "these forms"+userFormList;
	return "ApplicationSubmit";
}
}
