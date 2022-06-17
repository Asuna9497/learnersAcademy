package learnersAcademy.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import bean.SubjectAndTeacher;
import bean.newClass;

public class SubjectAndTeacherDao {
	
	public int addSubjectAndTeacher(SubjectAndTeacher st) {
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		int row = (Integer) s.save(st);

		tr.commit();
		s.close();
		sf.close();

		return row;
	}
	
	
	public int deleteSubjectAndTeacher(int id ) {
		
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		Query q = s.createQuery("delete from SubjectAndTeacher where id=:id");
		q.setParameter("id", id);
		int row = q.executeUpdate();
		tr.commit();
		s.close();
		sf.close();
		
		return row;
	}
	
	
	public List<SubjectAndTeacher>getSubAndTeacherById(int newClassId){
		SessionFactory sf = Config.getConfiguration();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();

		Query<SubjectAndTeacher> q = s.createQuery("from SubjectAndTeacher where newClassId=:newClassId", SubjectAndTeacher.class);
		q.setParameter("newClassId", newClassId);
		List<SubjectAndTeacher> list = q.list();

		tr.commit();
		s.close();
		sf.close();

		return list;
	}
	
	}
