package com.ewayshop.web.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import javax.validation.constraints.ValidEmail;

import org.springframework.stereotype.Component;

@Component
public class Users {

	private int userID;
	@NotNull
	// @Pattern(regexp = ".*\\@.*\\..*", message = "Not a valid email")
	@ValidEmail
	@Column(name="userEmai")
	private String userEmail;
	@Pattern(regexp = "^\\S+$")
	@Size(min = 8, max = 30, message = "Password must be between 8 and 30")
	private String userPassword;
	@NotNull
	@Size(min = 4, max = 15, message = "Name must be between 4 and 15")
	private String userFirstName;
	@NotNull
	@Size(min = 4, max = 15, message = "Name must be between 4 and 15")
	private String userLastName;

	@NotNull
	@Size(min = 4, max = 15, message = "City must be between 4 and 15")
	private String userCity;
	@NotNull
	@Size(min = 4, max = 15, message = "Zip must be between 4 and 15 digit and must be number")
	private String userZip;
	private Date userRegistrationDate;
	@NotNull
	@Size(min = 11, max = 15, message = "Number must be between 11 and 15")
	private String userPhone;
	@NotNull
	@Size(min = 4, max = 15, message = "Country must be between 4 and 15")
	private String userCountry;
	@NotNull
	@Size(min = 4, max = 15, message = "Name must be between 4 and 100")
	private String userAddress;

	public Users() {
		// TODO Auto-generated constructor stub
	}

	public Users(int userID, String userEmail, String userPassword, String userFirstName, String userLastName,
			String userCity, String userZip, Date userRegistrationDate, String userPhone, String userCountry,
			String userAddress) {
		this.userID = userID;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userFirstName = userFirstName;
		this.userLastName = userLastName;
		this.userCity = userCity;
		this.userZip = userZip;
		this.userRegistrationDate = userRegistrationDate;
		this.userPhone = userPhone;
		this.userCountry = userCountry;
		this.userAddress = userAddress;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserFirstName() {
		return userFirstName;
	}

	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}

	public String getUserLastName() {
		return userLastName;
	}

	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}

	public String getUserCity() {
		return userCity;
	}

	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}

	public String getUserZip() {
		return userZip;
	}

	public void setUserZip(String userZip) {
		this.userZip = userZip;
	}

	public Date getUserRegistrationDate() {
		return userRegistrationDate;
	}

	public void setUserRegistrationDate(Date userRegistrationDate) {
		this.userRegistrationDate = userRegistrationDate;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserCountry() {
		return userCountry;
	}

	public void setUserCountry(String userCountry) {
		this.userCountry = userCountry;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	@Override
	public String toString() {
		return "Users [userID=" + userID + ", userEmail=" + userEmail + ", userPassword=" + userPassword
				+ ", userFirstName=" + userFirstName + ", userLastName=" + userLastName + ", userCity=" + userCity
				+ ", userZip=" + userZip + ", userRegistrationDate=" + userRegistrationDate + ", userPhone=" + userPhone
				+ ", userCountry=" + userCountry + ", userAddress=" + userAddress + "]";
	}

}
