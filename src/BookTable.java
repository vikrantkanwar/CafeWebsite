import javax.persistence.*;

@Entity
@Table(name = "reservation")
public class BookTable {
	@Column(name = "first_name")
	String fname;
	
	@Column(name = "last_name")
	String lname;
	
	@Column(name = "phone")
	String phone;
	
	@Id
	@Column(name = "email") 
	String email;
	
	@Column(name = "date")
	String date;
	
	@Column(name = "time")
	String time;
	
	@Column(name = "attendees")
	String attendees;
	
	@Column(name = "comments")
	String comments;
	
	public BookTable() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookTable(String fname, String lname, String phone, String email, String date, String time, String attendees,
			String comments) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
		this.date = date;
		this.time = time;
		this.attendees = attendees;
		this.comments = comments;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getAttendees() {
		return attendees;
	}
	public void setAttendees(String attendees) {
		this.attendees = attendees;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
}
