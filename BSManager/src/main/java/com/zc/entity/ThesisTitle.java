package com.zc.entity;

import java.util.Date;

public class ThesisTitle {
	private int id;
	private String thesisName;
	private int teacherId;
	private Date submitTime;
	private int status;
	private String inputMan;
	private String description;
	
	private String statusName;
	
	public ThesisTitle() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getThesisName() {
		return thesisName;
	}

	public void setThesisName(String thesisName) {
		this.thesisName = thesisName;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	

	public Date getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getInputMan() {
		return inputMan;
	}

	public void setInputMan(String inputMan) {
		this.inputMan = inputMan;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	@Override
	public String toString() {
		return "ThesisTitle [id=" + id + ", thesisName=" + thesisName + ", teacherId=" + teacherId + ", submitTime="
				+ submitTime + ", status=" + status + ", inputMan=" + inputMan + ", description=" + description
				+ ", statusName=" + statusName + "]";
	}


		
	
}
