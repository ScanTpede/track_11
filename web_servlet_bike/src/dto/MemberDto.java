package dto;

public class MemberDto {
	String id, name, password, area, adress,
	mobile_1, mobile_2, mobile_3, gender, hobby_travel,
	hobby_reading, hobby_sports, reg_date,
	update_date, last_login_date, exit_date, memberLevel;
	int password_len;
	
	//로그인
	public MemberDto(String name, String memberLevel) {
		super();
		this.name = name;
		this.memberLevel = memberLevel;
	}
	
	
	
	
	public MemberDto(String id, String name, String password, String area, String adress, String mobile_1,
			String mobile_2, String mobile_3, String gender, String hobby_travel, String hobby_reading,
			String hobby_sports, String reg_date, String update_date, String last_login_date, String exit_date,
			String memberLevel, int password_len) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.area = area;
		this.adress = adress;
		this.mobile_1 = mobile_1;
		this.mobile_2 = mobile_2;
		this.mobile_3 = mobile_3;
		this.gender = gender;
		this.hobby_travel = hobby_travel;
		this.hobby_reading = hobby_reading;
		this.hobby_sports = hobby_sports;
		this.reg_date = reg_date;
		this.update_date = update_date;
		this.last_login_date = last_login_date;
		this.exit_date = exit_date;
		this.memberLevel = memberLevel;
		this.password_len = password_len;
	}


	//회원정보수정저장
	public MemberDto(String id, String name, String area, String adress, String mobile_1,
			String mobile_2, String mobile_3, String gender, String hobby_travel, String hobby_reading,
			String hobby_sports, String update_date) {
		super();
		this.id = id;
		this.name = name;
		this.area = area;
		this.adress = adress;
		this.mobile_1 = mobile_1;
		this.mobile_2 = mobile_2;
		this.mobile_3 = mobile_3;
		this.gender = gender;
		this.hobby_travel = hobby_travel;
		this.hobby_reading = hobby_reading;
		this.hobby_sports = hobby_sports;
		this.update_date = update_date;
	}


	//회원가입
	public MemberDto(String id, String name, String password, String area, String adress, String mobile_1,
			String mobile_2, String mobile_3, String gender, String hobby_travel, String hobby_reading,
			String hobby_sports, String reg_date, int password_len) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.area = area;
		this.adress = adress;
		this.mobile_1 = mobile_1;
		this.mobile_2 = mobile_2;
		this.mobile_3 = mobile_3;
		this.gender = gender;
		this.hobby_travel = hobby_travel;
		this.hobby_reading = hobby_reading;
		this.hobby_sports = hobby_sports;
		this.reg_date = reg_date;
		this.password_len = password_len;
	}

	public MemberDto(String id, String name, String password, String area, String adress, String mobile_1,
			String mobile_2, String mobile_3, String gender, String hobby_travel, String hobby_reading,
			String hobby_sports, String reg_date, String update_date, String last_login_date, String exit_date,
			int password_len) {
		
		this.id = id;
		this.name = name;
		this.password = password;
		this.area = area;
		this.adress = adress;
		this.mobile_1 = mobile_1;
		this.mobile_2 = mobile_2;
		this.mobile_3 = mobile_3;
		this.gender = gender;
		this.hobby_travel = hobby_travel;
		this.hobby_reading = hobby_reading;
		this.hobby_sports = hobby_sports;
		this.reg_date = reg_date;
		this.update_date = update_date;
		this.last_login_date = last_login_date;
		this.exit_date = exit_date;
		this.password_len = password_len;
	}
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getPassword() {
		return password;
	}
	public String getArea() {
		return area;
	}
	public String getAdress() {
		return adress;
	}
	public String getMobile_1() {
		return mobile_1;
	}
	
	public String getMemberLevel() {
		return memberLevel;
	}
	public String getMobile_2() {
		return mobile_2;
	}
	public String getMobile_3() {
		return mobile_3;
	}
	public String getGender() {
		return gender;
	}
	
	public String getHobby_travel() {
		return hobby_travel;
	}
	public String getHobby_reading() {
		return hobby_reading;
	}
	public String getHobby_sports() {
		return hobby_sports;
	}
	public String getReg_date() {
		return reg_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public String getLast_login_date() {
		return last_login_date;
	}
	public String getExit_date() {
		return exit_date;
	}
	public int getPassword_len() {
		return password_len;
	}
	
	
}
