package com.hncompany.dto;

import java.sql.Date;

public class MemberNoteVO {
    private int cnt;
	private String id;
    private String title;
    private String main;
    private Date time;
    private int lookup;
    
    public int getcnt() {
        return cnt;
    }
 
    public void setcnt(int cnt) {
        this.cnt = cnt;
    }
 
 
    public String getId() {
        return id;
    }
 
    public void setid(String id) {
        this.id = id;
    }
 
    public String gettitle() {
        return title;
    }
 
    public void settitle(String title) {
        this.title = title;
    }
 
    public String getmain() {
        return main;
    }
 
    public void setmain(String main) {
        this.main  = main;
    }
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}

	public int getLookup() {
		return lookup;
	}

	public void setLookup(int lookup) {
		this.lookup = lookup;
	}

}

