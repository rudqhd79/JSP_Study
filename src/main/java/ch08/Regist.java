package ch08;

public class Regist {
	private String id;
	private String name;
	private String address;
	private String grade;
	private String phone;
	private String korea;
	
	public Regist(String id, String name, String address, String grade, String phone, String korea) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.grade = grade;
		this.phone = phone;
		this.setKorea(korea);
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getKorea() {
		return korea;
	}

	public void setKorea(String korea) {
		this.korea = korea;
	}
}
