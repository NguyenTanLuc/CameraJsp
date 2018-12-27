package model;

import java.util.Set;
import java.util.TreeMap;

public class Cart {
static TreeMap<Product, Integer> list ;

public Cart() {
	this.list = new TreeMap<>();
}
public static TreeMap<Product, Integer> getCart (){
	return list;
	
}
public  static double totalPrice () {
	double price =0;
	Set<Product> set = list.keySet();
	for (Product product : set) {
		double Aprice = product.getPrice()* list.get(product);
		price+= Aprice;
	}
	return price;
}




}
