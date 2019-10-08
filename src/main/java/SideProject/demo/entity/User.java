package SideProject.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	
	private String Date;
	private String Note;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String date, String note) {
		super();
		Id = id;
		Date = date;
		Note = note;
	}
	
	public User(String date, String note) {
		super();
		Date = date;
		Note = note;
	}
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getNote() {
		return Note;
	}
	public void setNote(String note) {
		Note = note;
	}
	@Override
	public String toString() {
		return "User [Id=" + Id + ", Date=" + Date + ", Note=" + Note + "]";
	}
	
//	
	
}
