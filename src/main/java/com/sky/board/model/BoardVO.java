package com.sky.board.model;

import java.sql.Timestamp;

public class BoardVO {
	private int bno;
	private String name;
	private String title;
	private String content;
	private Timestamp regdate;
	private int hit;
	
	public BoardVO() {
	}

	public BoardVO(int bno, String name, String title, String content, Timestamp regdate, int hit) {
		super();
		this.bno = bno;
		this.name = name;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.hit = hit;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
}
