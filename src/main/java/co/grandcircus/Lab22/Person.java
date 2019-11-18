package co.grandcircus.Lab22;

import org.springframework.stereotype.Component;

@Component
public class Person {

	private String firstName;
	private String lastName;
	private String email;
	private String phoneNumber;
	private String passWord;
	private boolean specialOffersYes;
	private boolean financingFollowupYes;
	private String financingFollowupMethod;

	public Person() {
		super();
	}

	public Person(String firstName, String lastName, String email, String phoneNumber, String passWord, boolean specialOffersYes,
			boolean financingFollowupYes, String financingFollowupMethod) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.passWord = passWord;
		this.specialOffersYes = specialOffersYes;
		this.financingFollowupYes = financingFollowupYes;
		this.financingFollowupMethod = financingFollowupMethod;
		
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
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
		
	}
	
	public String getPassword() {
		return passWord;
	}

	public void setPassword(String passWord) {
		this.passWord = passWord;
	}
	
	
	public boolean isSpecialOffersYes() {
		return specialOffersYes;
	}

	public void setSpecialOffersYes(boolean specialOffersYes) {
		this.specialOffersYes = specialOffersYes;
	}

	public boolean isFinancingFollowupYes() {
		return financingFollowupYes;
	}

	public void setFinancingFollowupYes(boolean financingFollowupYes) {
		this.financingFollowupYes = financingFollowupYes;
	}

	public String getFinancingFollowupMethod() {
		return financingFollowupMethod;
	}

	public void setFinancingFollowupMethod(String financingFollowupMethod) {
		this.financingFollowupMethod = financingFollowupMethod;
	}

	@Override
	public String toString() {
		return String.format("%s %s! Thank you for registering.\nemail: %s\n%s", firstName, lastName, email, phoneNumber);
	}

}
