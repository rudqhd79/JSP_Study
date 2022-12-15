package ch08;

import java.util.ArrayList;
import java.util.HashMap;

//데이터 샘플을 제공해주는 클래스
public class ProductService {
	//HashMap은 key, value다
	HashMap<String, Product> products = new HashMap<>();
	
	public ProductService() {
		Product p = new Product("101", "아이폰14", "애플", 1400000, "2020.12.12");
		products.put("101", p);
		
		p = new Product("102", "갤럭시노트20", "삼성전자", 1300000, "2020.2.2");
		products.put("102", p);
		
		p = new Product("103", "엘스듀얼폰", "엘스전자", 1200000, "2021.01.01");
		products.put("103", p);
	}
	
	//모든 상품 데이터를 가져오는 메소드(select * from)
	//해쉬맵의 products의 value인 모든 값들을 보여준다
	public ArrayList<Product> findAll() {
		return new ArrayList<>(products.values());
	}
	
	//id로 원하는 상품을 가져오는 메소드(select * from where id="102")
	public Product find(String id) {
		return products.get(id);
	}

}
