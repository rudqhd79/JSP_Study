package TEST.MVC;

import java.util.ArrayList;
import java.util.HashMap;

public class RegistCustomer {

	HashMap<String, Regist> regist = new HashMap<>();

	public RegistCustomer() {
		Regist r = new Regist("1", "김경범", "금천구", "VIP", "010-0000-0000");
		regist.put("1", r);
		
		r = new Regist("2", "유정현", "동작구", "Bronze", "010-1111-1111");
		regist.put("2", r);
		
		r = new Regist("3", "박민우", "동탄", "Gold", "010-2222-2222");
		regist.put("3", r);
	}
	
	public ArrayList<Regist> findAll() {
		return new ArrayList<>(regist.values());
	}
	
	public Regist find(String id) {
		return regist.get(id);
	}
}
