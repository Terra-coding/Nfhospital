package com.write.domain.vo;

public class ThankyouWriteDTO {
	
	private int writeNum;
	private String title;
	private String content;
	private String id;
	private String time;
		
	public ThankyouWriteDTO() {;}
	
	public int getWriteNum() {
		return writeNum;
	}
	
	public void setWriteNum(int writeNum) {
		this.writeNum = writeNum;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	
}
