package ch07.com.dao;

public class GuGuDan {
//	private int num = 5;
//	public String process() {
//		String a ="";
//		for (int i = 1; i < 10; i++) {
//			a += num+"*" + i + "=" + num* i + "<br />";
//		}
//		return a;
//	}
	public String process(int num) {
		String a = "";
		for (int i = 1; i < 10; i++) {
			a += num + "*" + i + "=" + num * i + "<br />";
		}
		return a;
	}
}
