package dbUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import models.HelpForm;



public class HibernateSF2 {

	
	static SessionFactory sf = null;
public static SessionFactory getSession() {
	if(sf==null)
	{
		Configuration config = new Configuration();
		config.configure("hibernate.cfg.xml");
		config.addAnnotatedClass(HelpForm.class);
		
		sf = config.buildSessionFactory();
		
		
	}
	return sf;
}


	
}
