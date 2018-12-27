package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Nav_tab;
import model.Product;

public class NavTab {
		ArrayList<Nav_tab> tab = new ArrayList<>();
	public ArrayList<Nav_tab> getNav_tab() throws SQLException {
		Connection con = ConectionDB.getConection();
		String qr = "SELECT DISTINCT category.id,category.name, nav_tab.id as id_slide,nav_tab.img , nav_tab.status FROM category INNER JOIN nav_tab ON category.id = nav_tab.id_category WHERE nav_tab.status =1";
		PreparedStatement statement = con.prepareStatement(qr);
		ResultSet set = statement.executeQuery();
		while (set.next()) {
			int id = set.getInt(1);
			String name = set.getString(2);
			int id_slide = set.getInt(3);
			String img =set.getString(4);
			int status = set.getInt(5);
			tab.add(new Nav_tab(id, name, id_slide, img, status));
		}
		return tab;
	}

	public  ArrayList<Product> getNav_ProDuct(int id) throws SQLException {
		ArrayList<Product> listtabProduct = new ArrayList<>();
		PreparedStatement nav_product = ConectionDB.getConection().prepareStatement(
				"select product.* From nav_tab INNER JOIN nav_product on nav_tab.id = nav_product.id_slide INNER JOIN product on nav_product.id_product = product.id WHERE nav_tab.id=?");
		nav_product.setInt(1, id);
		ResultSet rs = nav_product.executeQuery();
			while (rs.next()) {
				Product product = new Product.Builder()
						.setId(rs.getInt("id"))
						.setIdCategory(rs.getInt("id_category"))
						.setName(rs.getString("name"))
						.setPrice(rs.getInt("price"))
						.setStatus(rs.getInt("status"))
						.setQuatity( rs.getInt("quatity"))
						.setImage( rs.getString("img"))
						.setDetai(rs.getString("detail_product"))
						.build();
				
				
				listtabProduct.add(product);
			}

			return listtabProduct;
		}
	public static void main(String[] args) throws SQLException {
		NavTab sds = new NavTab();
		System.out.println(sds.getNav_tab());
		
	}

}
