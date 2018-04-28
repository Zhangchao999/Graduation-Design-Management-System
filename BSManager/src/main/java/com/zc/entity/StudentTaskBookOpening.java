package com.zc.entity;

public class StudentTaskBookOpening {
	
	private int id;
	private int studentId;
	private String studentOpeningResport;
	private String studentTaskBook;
	private String description;
	
	private int completion;
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
	public String getStudentOpeningResport() {
		return studentOpeningResport;
	}
	public void setStudentOpeningResport(String studentOpeningResport) {
		this.studentOpeningResport = studentOpeningResport;
	}
	public String getStudentTaskBook() {
		return studentTaskBook;
	}
	public void setStudentTaskBook(String studentTaskBook) {
		this.studentTaskBook = studentTaskBook;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getCompletion() {
		return completion;
	}
	public void setCompletion(int completion) {
		this.completion = completion;
	}
	@Override
	public String toString() {
		return "StudentTaskBookOpening [id=" + id + ", studentId=" + studentId + ", studentOpeningResport="
				+ studentOpeningResport + ", studentTaskBook=" + studentTaskBook + ", description=" + description
				+ ", completion=" + completion + "]";
	}
	
	
	
}
