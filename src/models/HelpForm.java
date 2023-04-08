package models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="helpform")
public class HelpForm {
	@Id
	@Column(name="formid")
	int formid;
	@Column(name="lname")
	String lname;
	@Column(name="dob")
	String dob;
	@Column(name="gender")
	String gender;
	@Column(name="email")
	String email;
	@Column(name="phone")
	String phone;
	@Column(name="occupation")
	String occupation;
	@Column(name="reason")
	String reason;
	@Column(name="address")
	String address;
	@Column(name="typeOfHelp")
	String typeOfHelp;
	
	@Column(name="status")
	String status;
	@Column(name="fname")
	String fname;
	String deliveryStatus;
	public String getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	public int getFormid() {
		return formid;
	}
	public void setFormid(int formid) {
		this.formid = formid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTypeOfHelp() {
		return typeOfHelp;
	}
	public void setTypeOfHelp(String typeOfHelp) {
		this.typeOfHelp = typeOfHelp;
	}
	
}
