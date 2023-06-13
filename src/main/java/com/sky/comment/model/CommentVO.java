package com.sky.comment.model;

import java.sql.Timestamp;

public class CommentVO {
	private int cno;
	private String name;
	private String bno;
	private String content;
	private Timestamp regdate;
	
	public CommentVO() {
	}

	public CommentVO(int cno, String name, String bno, String content, Timestamp regdate) {
		super();
		this.cno = cno;
		this.name = name;
		this.bno = bno;
		this.content = content;
		this.regdate = regdate;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
}
