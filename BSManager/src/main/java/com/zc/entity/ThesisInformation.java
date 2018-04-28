package com.zc.entity;

public class ThesisInformation {
	private int id;
	private int studentId;
	private String thesisText;
	private int status;
	private String description;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getThesisText() {
		return thesisText;
	}
	public void setThesisText(String thesisText) {
		this.thesisText = thesisText;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "ThesisInformation [id=" + id + ", studentId=" + studentId + ", thesisText=" + thesisText + ", status="
				+ status + ", description=" + description + "]";
	}
	
	
}
