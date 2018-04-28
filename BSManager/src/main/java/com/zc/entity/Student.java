package com.zc.entity;

import java.util.Date;

public class Student {
	
	private int id;
	private String studentNo;
	private String studentName;
	private String sex;
	private int majorId;
	private String grade;
	private String inputMan;
	private Date lastModifyTime;
	private String phone;
	private String majorName;
	
	private String thesisName;
	private String studentOpeningPath;
	private String studentOpeningName;
	private int completion;
	private String completionName;
	
	private String fileName;
	private String filePath;
	
	private int thesisScore;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getMajorId() {
		return majorId;
	}
	public void setMajorId(int majorId) {
		this.majorId = majorId;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getInputMan() {
		return inputMan;
	}
	public void setInputMan(String inputMan) {
		this.inputMan = inputMan;
	}
	
	public Date getLastModifyTime() {
		return lastModifyTime;
	}
	public void setLastModifyTime(Date lastModifyTime) {
		this.lastModifyTime = lastModifyTime;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getThesisName() {
		return thesisName;
	}
	public void setThesisName(String thesisName) {
		this.thesisName = thesisName;
	}
	
	public String getStudentOpeningPath() {
		return studentOpeningPath;
	}
	public void setStudentOpeningPath(String studentOpeningPath) {
		this.studentOpeningPath = studentOpeningPath;
	}
	
	public String getStudentOpeningName() {
		return studentOpeningName;
	}
	public void setStudentOpeningName(String studentOpeningName) {
		this.studentOpeningName = studentOpeningName;
	}
	
	
	public int getCompletion() {
		return completion;
	}
	public void setCompletion(int completion) {
		this.completion = completion;
	}
	
	public String getCompletionName() {
		return completionName;
	}
	public void setCompletionName(String completionName) {
		this.completionName = completionName;
	}
	
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	
	public int getThesisScore() {
		return thesisScore;
	}
	public void setThesisScore(int thesisScore) {
		this.thesisScore = thesisScore;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", studentNo=" + studentNo + ", studentName=" + studentName + ", sex=" + sex
				+ ", majorId=" + majorId + ", grade=" + grade + ", inputMan=" + inputMan + ", lastModifyTime="
				+ lastModifyTime + ", phone=" + phone + ", majorName=" + majorName + ", thesisName=" + thesisName
				+ ", studentOpeningPath=" + studentOpeningPath + ", studentOpeningName=" + studentOpeningName
				+ ", completion=" + completion + ", completionName=" + completionName + ", fileName=" + fileName
				+ ", filePath=" + filePath + ", thesisScore=" + thesisScore + "]";
	}
	
	
	

	
	
	
	
	
	




	
	
	
	
}
