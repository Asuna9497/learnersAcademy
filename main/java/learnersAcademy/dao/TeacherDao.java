package learnersAcademy.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import bean.Teacher;

public class TeacherDao {

	public int addTeacher(Teacher t) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		int row = (Integer) s.save(t);

		tr.commit();
		s.close();
		sf.close();
		return row;
	}

	public int updateTeacher(Teacher t) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		Query q = s.createQuery(
				"update Teacher set firstName= :firstName, lastName= :lastName, address=:address, phone=:phone, designation=:designation where tid=:id");
		q.setParameter("firstName", t.getFirstName());
		q.setParameter("lastName", t.getLastName());
		q.setParameter("address", t.getAddress());
		q.setParameter("phone", t.getPhone());
		q.setParameter("designation", t.getDesignation());
		q.setParameter("id", t.getTid());
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		return row;

	}

	public int deleteTeacher(int id) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		Query q = s.createQuery("delete from Teacher where tid=:id");
		q.setParameter("id", id);
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		return row;

	}

	public List<Teacher> getTeacherList() {

		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		Query q = s.createQuery("from Teacher");

		List<Teacher> list = q.list();

		tr.commit();
		s.close();
		sf.close();
		return list;
	}

}
