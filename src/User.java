import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
	
	@Column(name = "username")
	String username;
	
	@Id
	@Column(name = "email")
	String email;
	
	@Column(name = "question")
	String question;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "answer")
	String answer;
	
	@Column(name = "password")
	String password;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String username, String email, String question, String answer, String password) {
		super();
		this.username = username;
		this.email = email;
		this.question = question;
		this.answer = answer;
		this.password = password;
	}
}
