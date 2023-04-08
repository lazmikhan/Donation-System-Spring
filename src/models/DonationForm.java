package models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="donationform")
public class DonationForm {
	@Id
	int donationId;
	String foodName;
	String location;
	String phoneNo;
	String foodDesc;
	String delivered;
	String helpaccepted;
	String acceptedVolunteer;
	String time;
	String seekerEmail;
    public String getSeekerEmail() {
		return seekerEmail;
	}
	public void setSeekerEmail(String seekerEmail) {
		this.seekerEmail = seekerEmail;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getAcceptedVolunteer() {
		return acceptedVolunteer;
	}
	public void setAcceptedVolunteer(String acceptedVolunteer) {
		this.acceptedVolunteer = acceptedVolunteer;
	}
	public String getHelpaccepted() {
		return helpaccepted;
	}
	public void setHelpaccepted(String helpaccepted) {
		this.helpaccepted = helpaccepted;
	}
	public int getDonationId() {
		return donationId;
	}
	public void setDonationId(int donationId) {
		this.donationId = donationId;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getFoodDesc() {
		return foodDesc;
	}
	public void setFoodDesc(String foodDesc) {
		this.foodDesc = foodDesc;
	}
	public String getDelivered() {
		return delivered;
	}
	public void setDelivered(String delivered) {
		this.delivered = delivered;
	}

	
	
	
	
}
