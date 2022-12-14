package ch07.com.dao;

public class Member {
	private String email;
	private String phone;

	public static final String pattern1 = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
	public static final String pattern2 = "(02|010)-\\d{3,4}-\\d{4}";
	
	public String result() {
		String result = "";
		if(email.matches(pattern1) && phone.matches(pattern2)) {
			 result= "환영합니다.";
		} else {
			result="유효성 검사에 통과하지 못했습니다.";
		}
		return result;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
