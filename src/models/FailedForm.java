package models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="failedform")
public class FailedForm {

	String failedReason;
	String option;
	String volunteerEmail;
	@Id
	int failedFormId;
	public String getFailedReason() {
		return failedReason;
	}
	public void setFailedReason(String failedReason) {
		this.failedReason = failedReason;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getVolunteerEmail() {
		return volunteerEmail;
	}
	public void setVolunteerEmail(String volunteerEmail) {
		this.volunteerEmail = volunteerEmail;
	}
	public int getFailedFormId() {
		return failedFormId;
	}
	public void setFailedFormId(int failedFormId) {
		this.failedFormId = failedFormId;
	}

	
}
