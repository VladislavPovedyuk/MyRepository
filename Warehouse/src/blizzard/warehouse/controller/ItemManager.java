package blizzard.warehouse.controller;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

import blizzard.warehouse.model.Item;
import blizzard.warehouse.model.User;
import blizzard.warehouse.util.HibernateUtil;

public class ItemManager extends HibernateUtil {

	public Item add(Item item) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(item);
		session.getTransaction().commit();
		return item;
	}
	public Item delete(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Item item = (Item) session.load(Item.class, id);
		if(null != item) {
			session.delete(item);
		}
		session.getTransaction().commit();
		return item;
	}
	
	public Item updateItem(Item item) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(item);		
		session.getTransaction().commit();
		return item;
	}
	
	public List<Item> getItemById(int Id)
	{
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();	
		List <Item> list=(List <Item> )session.createQuery("from Item where id ="+Id).list();
		session.getTransaction().commit();
		return list;
	}
	public List<Item> list() {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Item> items = null;
		try {
			
			items = (List<Item>)session.createQuery("from Item").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return items;
	}
}
