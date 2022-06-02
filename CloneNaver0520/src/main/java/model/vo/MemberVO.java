package model.vo;

public class MemberVO {
	
	String id;
	String pwd;
	String name;
	String tel;
	String gender;
	String birthday;
	
	public MemberVO() {
		super();
	}
	
	
	
	
	public MemberVO(String id, String pwd, String name, String tel, String gender, String birthday) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.tel = tel;
		this.gender = gender;
		this.birthday = birthday;
	}




	public MemberVO(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}


}
