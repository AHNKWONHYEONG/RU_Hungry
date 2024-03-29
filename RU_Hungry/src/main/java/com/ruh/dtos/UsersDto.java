package com.ruh.dtos;
import java.util.Date;
public class UsersDto {
private int seq;
private String id;
private String pw;
private String name;
private String nickname;
private Date regdate;
private String delflag;
private String sex;
private Date birth;
private String email;


	public UsersDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UsersDto(int seq, String id, String pw, String name, String nickname, Date regdate, String delflag,String sex, Date birth, String email) {
		super();
		this.seq = seq;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.regdate = regdate;
		this.delflag = delflag;
		this.sex = sex;
		this.birth = birth;
		this.email = email;

	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getDelflag() {
		return delflag;
	}

	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	


	@Override
	public String toString() {
		return "UsersDto [seq=" + seq + ", id=" + id + ", pw=" + pw + ", name=" + name + ", nickname=" + nickname
				+ ", regdate=" + regdate + ", delflag=" + delflag + ", sex=" + sex + ", birth=" + birth + ", email="
				+ email + "]";
	}


}