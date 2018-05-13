package com.zc.entity;

public class Doubt {
	private int id;
	private int studentId;
	private String studentDoubt;
	private String answer;
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
	public String getStudentDoubt() {
		return studentDoubt;
	}
	public void setStudentDoubt(String studentDoubt) {
		this.studentDoubt = studentDoubt;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "Doubt [id=" + id + ", studentId=" + studentId + ", studentDoubt=" + studentDoubt + ", answer=" + answer
				+ "]";
	}
	
	
}
