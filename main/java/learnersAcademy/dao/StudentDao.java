package learnersAcademy.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import bean.Student;

public class StudentDao {

	public int addStudent(Student std) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		int row = (Integer) s.save(std);

		tr.commit();
		s.close();
		sf.close();
		return row;
	}

	public int updateStudent(Student std) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		Query q = s.createQuery(
				"update Student set firstName= :firstName, lastName= :lastName,address=:address, phone=:phone, classes=:class where sid=:id");
		q.setParameter("firstName", std.getFirstName());
		q.setParameter("lastName", std.getLastName());
		q.setParameter("address", std.getAddress());
		q.setParameter("phone", std.getPhone());
		q.setParameter("class", std.getClasses());
		q.setParameter("id", std.getSid());
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		return row;

	}

	public int deleteStudent(int id) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		Query q = s.createQuery("delete from Student where sid=:id");
		q.setParameter("id", id);
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		return row;

	}

	public List<Student> getStudentList() {

		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		Query q = s.createQuery("from Student");

		List<Student> list = q.list();

		tr.commit();
		s.close();
		sf.close();
		return list;
	}
	
	public List<Student> getStudentListByClass(String classes) {

		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		Query q = s.createQuery("from Student where classes=:classes");
		q.setParameter("classes", classes);
		List<Student> list = q.list();
		System.out.println(list);

		tr.commit();
		s.close();
		sf.close();
		return list;
	}
}
