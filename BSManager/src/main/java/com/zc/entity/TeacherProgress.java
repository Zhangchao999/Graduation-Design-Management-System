package com.zc.entity;

import java.util.Date;

public class TeacherProgress {
	private int id;
	private String context;
	private String inputMan;
	private Date inputTime;
	private int studentId;
	private int teacherId;
	private int state;
	
	private String studentName;
	private String thesisTitleName;
	private String stateName;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getInputMan() {
		return inputMan;
	}
	public void setInputMan(String inputMan) {
		this.inputMan = inputMan;
	}
	public Date getInputTime() {
		return inputTime;
	}
	public void setInputTime(Date inputTime) {
		this.inputTime = inputTime;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getThesisTitleName() {
		return thesisTitleName;
	}
	public void setThesisTitleName(String thesisTitleName) {
		this.thesisTitleName = thesisTitleName;
	}
	
	
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	@Override
	public String toString() {
		return "TeacherProgress [id=" + id + ", context=" + context + ", inputMan=" + inputMan + ", inputTime="
				+ inputTime + ", studentId=" + studentId + ", teacherId=" + teacherId + ", state=" + state
				+ ", studentName=" + studentName + ", thesisTitleName=" + thesisTitleName + ", stateName=" + stateName
				+ "]";
	}
	
	
	
	
	
	
}
