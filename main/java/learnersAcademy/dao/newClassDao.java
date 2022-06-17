package learnersAcademy.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import bean.newClass;

public class newClassDao {

	public int addNewClass(newClass newClass) {
		SessionFactory sessionFactory = Config.getConfiguration();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		int row = (Integer) session.save(newClass);
		tr.commit();
		session.close();
		sessionFactory.close();
		return row;

	}

	public List<newClass> getClassesList() {

		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		Query query = s.createQuery("from newClass");
		List<newClass> list = query.list();
		tr.commit();
		s.close();
		sf.close();
		return list;

	}

	public int updateClass(newClass c) {

		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		Query q = s.createQuery("update newClass set className= :name where id= :id");
		q.setParameter("id", c.getId());
		q.setParameter("name", c.getClassName());
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		return row;
	}

	public int deleteClass(int id) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		Query q = s.createQuery("delete from newClass where id= :id");
		q.setParameter("id", id);
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		return row;
	}
	
	
	public newClass getClassbyId(int id) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		Query q = s.createQuery("from newClass where id= :id");
		q.setParameter("id", id);
		newClass classobj = (newClass) q.uniqueResult();
		tr.commit();
		s.close();
		sf.close();

		return classobj;
	}

}
