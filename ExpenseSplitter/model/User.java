package study.ExpenseSplitter.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "userName")
	private String userName;
	
	@Column(name = "firstName")
	private String firstName;
	
	@Column(name = "lastName")
	private String lastName;
	
	@Column(name = "email_id")
	private String emailId;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "contact_number")
	private long contactnumber;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "upi_id")
	private String upiId;

	public User() {
		
	}
	
	public User(String userName, String firstName, String lastName, String emailId, String password, long contactnumber,
			String address, String upiId) {
		super();
		this.userName = userName;
		this.firstName = firstName;
		this.lastName = lastName;
		this.emailId = emailId;
		this.password = password;
		this.contactnumber = contactnumber;
		this.address = address;
		this.upiId = upiId;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getemailId() {
		return emailId;
	}

	public void setemailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getContactnumber() {
		return contactnumber;
	}

	public void setContactnumber(long contactnumber) {
		this.contactnumber = contactnumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUpiId() {
		return upiId;
	}

	public void setUpiId(String upiId) {
		this.upiId = upiId;
	}
	
	
}
