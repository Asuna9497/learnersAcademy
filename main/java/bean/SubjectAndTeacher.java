package bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name= "subjectandteacher")
public class SubjectAndTeacher {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	/*
	 * @OneToOne(cascade = CascadeType.ALL)
	 * 
	 * @JoinColumn(name = "newClassId", referencedColumnName = "id") newClass
	 * newClassId;
	 */
	private int newClassId;
	
	private String subject;
	
	private String teacher;
	

	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public int getId() {
		return id;
	}
	public int getNewClassId() {
		return newClassId;
	}
	public void setNewClassId(int newClassId) {
		this.newClassId = newClassId;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
  