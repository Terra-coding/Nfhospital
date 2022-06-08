package com.write.domain.vo;

public class ThankyouWriteDTO {
	
	private int writeNum;
	private String title;
	private String content;
	private String id;
	private String time;
	private String name;
	private String phoneNum;
	
	public ThankyouWriteDTO() {;}
	
	public ThankyouWriteDTO(ThankyouWriteVO thankyouWriteVO ) {
		super();
		this.writeNum = thankyouWriteVO.getWriteNum();
		this.title = thankyouWriteVO.getTitle();
		this.content = thankyouWriteVO.getContent();
		this.id = thankyouWriteVO.getId();
		this.time = thankyouWriteVO.getTime();
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	
	
	
}
