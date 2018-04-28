package com.zc.entity;

import java.util.Date;

public class Topic {
	private int id;
	private int thesisId;
	private int studentId;
	private Date selectTime;
	public Topic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getThesisId() {
		return thesisId;
	}
	public void setThesisId(int thesisId) {
		this.thesisId = thesisId;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public Date getSelectTime() {
		return selectTime;
	}
	public void setSelectTime(Date selectTime) {
		this.selectTime = selectTime;
	}
	@Override
	public String toString() {
		return "Topic [id=" + id + ", thesisId=" + thesisId + ", studentId=" + studentId + ", selectTime=" + selectTime
				+ "]";
	}
	
}
