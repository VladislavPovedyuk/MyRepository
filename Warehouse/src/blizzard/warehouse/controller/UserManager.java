package blizzard.warehouse.controller;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

import blizzard.warehouse.model.Item;
import blizzard.warehouse.model.User;
import blizzard.warehouse.util.HibernateUtil;

public class UserManager extends HibernateUtil {

	public User doregister(User user) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		return user;
	}
	public String login(User user){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		User usr = new User();
		String strPass="error";
		try{
			
			List <User> list=(List <User> )session.createQuery("from User where login ='"+user.getLogin()+"'").list();
			usr=list.get(0);
			strPass=user.getPassword();
			if (usr.getPassword().equals(user.getPassword()))
			{
				session.getTransaction().commit();
				strPass=usr.getLogin();
				return usr.getLogin();
			}
		}
		catch (Exception e)
		{
			session.getTransaction().commit();
			return strPass;
		}
		return strPass;
			
	}
}

