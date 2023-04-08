package dbUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import models.DonationForm;
import models.FailedForm;
import models.FeedbackForm;
import models.UserInfo;




public class HibernateSF {
	static SessionFactory sf = null;
public static SessionFactory getSession() {
	if(sf==null)
	{
		Configuration config = new Configuration();
		config.configure("hibernate.cfg.xml");
		config.addAnnotatedClass(UserInfo.class);
		config.addAnnotatedClass(DonationForm.class);
		config.addAnnotatedClass(FailedForm.class);
		config.addAnnotatedClass(FeedbackForm.class);
		sf = config.buildSessionFactory();
		
		
	}
	return sf;
}

}
