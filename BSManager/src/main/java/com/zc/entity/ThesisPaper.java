package com.zc.entity;

public class ThesisPaper {
	
	private int id;
	private int studentId;
	private String paperInfo;
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
	public String getPaperInfo() {
		return paperInfo;
	}
	public void setPaperInfo(String paperInfo) {
		this.paperInfo = paperInfo;
	}
	@Override
	public String toString() {
		return "ThesisPaper [id=" + id + ", studentId=" + studentId + ", paperInfo=" + paperInfo + "]";
	}
	
	
}
