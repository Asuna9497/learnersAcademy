package learnersAcademy.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import bean.Subject;

public class SubjectDao {

	public int addSubject(Subject sub) {
		SessionFactory sessionFactory = Config.getConfiguration();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		int row = (Integer) session.save(sub);
		tr.commit();
		session.close();
		sessionFactory.close();
		return row;

	}

	public List<Subject> getSubjectsList() {

		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		Query query = s.createQuery("from Subject");
		List<Subject> list = query.list();
		tr.commit();
		s.close();
		sf.close();
		return list;

	}

	public int updateSubject(Subject sub) {

		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		Query q = s.createQuery("update Subject set subjectName= :name where id= :id");
		q.setParameter("id", sub.getId());
		q.setParameter("name", sub.getSubjectName());
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		return row;
	}

	public int deleteSubject(int id) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		Query q = s.createQuery("delete from Subject where id= :id");
		q.setParameter("id", id);
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		return row;
	}

}
