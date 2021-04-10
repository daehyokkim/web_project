package com.hncompany.dto;

public class CommentVO {
	private int cnt;
	private int ucnt;
	private String id;
	private String content;
	
	public int getcnt() {
		return cnt;
	}
	public void setcnt(int cnt) {
		this.cnt = cnt;
	}
	public String getcontent() {
		return content;
	}
	public void setcontent(String content) {
		this.content = content;
	}
	public int getucnt() {
		return ucnt;
	}
	public void setucnt(int ucnt) {
		this.ucnt = ucnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
