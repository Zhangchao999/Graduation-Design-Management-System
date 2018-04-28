package com.zc.entity;

public class StudentScore {
	private int id;
	private int studentId;
	private int thesisResult;
	private String inputMan;
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
	public int getThesisResult() {
		return thesisResult;
	}
	public void setThesisResult(int thesisResult) {
		this.thesisResult = thesisResult;
	}
	
	public String getInputMan() {
		return inputMan;
	}
	public void setInputMan(String inputMan) {
		this.inputMan = inputMan;
	}
	@Override
	public String toString() {
		return "StudentScore [id=" + id + ", studentId=" + studentId + ", thesisResult=" + thesisResult + ", inputMan="
				+ inputMan + "]";
	}
	
	
	
	
}
