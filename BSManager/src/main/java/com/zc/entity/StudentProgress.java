package com.zc.entity;

// 不使用

public class StudentProgress {
	private int id;
	private int progressId;
	private String context;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProgressId() {
		return progressId;
	}
	public void setProgressId(int progressId) {
		this.progressId = progressId;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	@Override
	public String toString() {
		return "StudentProgress [id=" + id + ", progressId=" + progressId + ", context=" + context + "]";
	}
	
	
}
