package com.hncompany.dto;

public class RouteVO {
    private String decon; 
    private String arcon; 
    private String demenu; 
    private String armenu; 
    private String date; 
    private String detime; 
    private String time; 
    private String mtime;
    private int cnt;
    
    private String mid_date; 
    private String midcon; 
    private String midmenu; 
    private String mid_d_time; 
    
    private String id;
    
    
    public int getcnt() {
    	return cnt;
    }
    public void setcnt(int cnt) {
    	this.cnt = cnt;
    }
    
    public String getdetime() {
    	return detime;
    }
    public void setdetime(String detime) {
    	this.detime = detime;
    }
    
    public String gettime() {
    	return time;
    }  
    public void settime(String time) {
    	this.time=time;
    }
    
    public String getmtime() {
    	return mtime;
    }
    public void setmtime(String mtime) {
    	this.mtime=mtime;
    }
    
    public String getdecon() {
    	return decon;
    }
    public void setdecon(String decon) {
    	this.decon = decon;
    }
    
    public String getarcon() {
    	return arcon;
    } 
    public void setarcon(String arcon) {
    	this.arcon = arcon;
    }
    
    public String getdemenu() {
    	return demenu;
    }
    public void setdemenu(String demenu) {
    	this.demenu = demenu;
    }

    public String getarmenu() {
    	return armenu;
    }
    public void setarmenu(String armenu) {
    	this.armenu = armenu;
    }

    public String getmidcon() {
    	return midcon;
    }
    public void setmidcon(String midcon) {
    	this.midcon = midcon;
    }

    public String getmidmenu() {
    	return midmenu;
    }
    public void setmidmenu(String midmenu) {
    	this.midmenu = midmenu;
    }
    
    public String getmid_d_time() {
    	return mid_d_time;
    }
    public void setmid_d_time(String mid_d_time) {
    	this.mid_d_time = mid_d_time;
    }
    
    public String getdate() {
    	return date;
    }
    public void setdate(String date) {
    	this.date = date;
    }
    
    public String getmid_date() {
    	return mid_date;
    }
    public void setmid_date(String mid_date) {
    	this.mid_date = mid_date; 
    }
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
