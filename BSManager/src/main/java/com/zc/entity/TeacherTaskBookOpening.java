package com.zc.entity;

public class TeacherTaskBookOpening {
	private int id;
	private int teacherId;
	private String openingReport;
	private String taskBook;
	private String description;
	private int thesisTitleId;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public String getOpeningReport() {
		return openingReport;
	}
	public void setOpeningReport(String openingReport) {
		this.openingReport = openingReport;
	}
	public String getTaskBook() {
		return taskBook;
	}
	public void setTaskBook(String taskBook) {
		this.taskBook = taskBook;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getThesisTitleId() {
		return thesisTitleId;
	}
	public void setThesisTitleId(int thesisTitleId) {
		this.thesisTitleId = thesisTitleId;
	}
	@Override
	public String toString() {
		return "TeacherTaskBookOpening [id=" + id + ", teacherId=" + teacherId + ", openingReport=" + openingReport
				+ ", taskBook=" + taskBook + ", description=" + description + ", thesisTitleId=" + thesisTitleId + "]";
	}
	
	
	
	
}
