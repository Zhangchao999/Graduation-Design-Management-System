package com.zc.entity;

import java.util.Date;

public class Announcement {
	private int id;
	private String context;
	private String inputMan;
	private Date lastModifyTime;
	
	private String timeFormat;
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
	public Date getLastModifyTime() {
		return lastModifyTime;
	}
	public void setLastModifyTime(Date lastModifyTime) {
		this.lastModifyTime = lastModifyTime;
	}
	
	
	public String getTimeFormat() {
		return timeFormat;
	}
	public void setTimeFormat(String timeFormat) {
		this.timeFormat = timeFormat;
	}
	@Override
	public String toString() {
		return "Announcement [id=" + id + ", context=" + context + ", inputMan=" + inputMan + ", lastModifyTime="
				+ lastModifyTime + ", timeFormat=" + timeFormat + "]";
	}
	
	
}
