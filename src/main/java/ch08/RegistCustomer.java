package ch08;

import java.util.ArrayList;
import java.util.HashMap;

public class RegistCustomer {

	HashMap<String, Regist> regist = new HashMap<>();

	public RegistCustomer() {
		Regist r = new Regist("1", "김경범", "서울시 금천구", "VIP", "010-0000-0000", "(최상)");
		regist.put("1", r);
		
		r = new Regist("2", "유정현", "서울시 동작구", "Bronze", "010-1111-1111", "(최하)");
		regist.put("2", r);
		
		r = new Regist("3", "박민우", "화성시 동탄구", "Gold", "010-2222-2222", "(중간)");
		regist.put("3", r);
	}
	
	public ArrayList<Regist> findAll() {
		return new ArrayList<>(regist.values());
	}
	
	public Regist find(String id) {
		return regist.get(id);
	}
}
