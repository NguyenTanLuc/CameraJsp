package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.commons.lang3.StringEscapeUtils;

import model.Product;

public class GetDataProduct {
	public static ResultSet getDataQ(String sql) throws SQLException {
		PreparedStatement statement = ConectionDB.getConection().prepareStatement(sql);
		return statement.executeQuery();
	}

	public static ArrayList<Product> getDataProduct() throws SQLException {
		ArrayList<Product> list = new ArrayList<>();
		ResultSet rs = getDataQ("SELECT * FROM product");
		while (rs.next()) {
			Product product = new Product.Builder()
					.setId(rs.getInt("id"))
					.setIdCategory(rs.getInt("id_category"))
					.setName(rs.getString("name"))
					.setPrice(rs.getInt("price"))
					.setStatus(rs.getInt("status"))
					.setQuatity( rs.getInt("quatity"))
					.setImage( rs.getString("img"))
					.setDetai(StringEscapeUtils.unescapeHtml4(rs.getString("detail_product")))
					.setThongSo(StringEscapeUtils.unescapeHtml4(rs.getString("digital")))
					.build();
			
			
			list.add(product);
		}
		rs.close();

		return list;

	}
	public static Product getProDuctById (int id) {
		Product product = null;
		try {
			Connection con = ConectionDB.getConection();
			String query = "SELECT * FROM product WHERE product.id=?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setInt(1, id);
			ResultSet rs = statement.executeQuery();
			rs.next();
			 product = new Product.Builder()
						.setId(rs.getInt("id"))
						.setIdCategory(rs.getInt("id_category"))
						.setName(rs.getString("name"))
						.setPrice(rs.getInt("price"))
						.setStatus(rs.getInt("status"))
						.setQuatity( rs.getInt("quatity"))
						.setImage( rs.getString("img"))
						.setDetai(StringEscapeUtils.unescapeHtml4(rs.getString("detail_product")))
						.setThongSo(StringEscapeUtils.unescapeHtml4(rs.getString("digital")))
						.build();
				rs.close();
				statement.close();
		} 
		catch (Exception e) {
			System.err.println("Loi E: "+e);
		}
	return product;
	}
	
	public static ResultSet getDataSearch (String keyword ) {
		ResultSet set = null;
		try {
			String sql = "SELECT product.id,product.name,product.price,product.img FROM product WHERE product.name LIKE ?";
			Connection connection = ConectionDB.getConection();
			PreparedStatement statement = connection.prepareStatement(sql);
			String sq ="%"
					+ keyword
					+ "%";
			statement.setString(1,sq);
			set= statement.executeQuery();
			return set;
		} catch (Exception e) {
		}
		return null;
	}
	public static ResultSet getDataMangerProduct (int page) {
		Connection connection;
		if (page !=0 ) {
			page = page-1;
		}
		System.out.println(page);
		try {
			connection = ConectionDB.getConection();
			String sql ="SELECT product.*, category.name as namecatogory,category.id_root FROM product INNER JOIN category ON product.id_category = category.id LIMIT ?, 15";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, page * 15);
			return statement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static ResultSet getDataByIdCatogory (int id) {
		try {
			Connection con = ConectionDB.getConection();
			String sql = "SELECT product.*,category.id_root FROM product INNER JOIN category ON category.id = product.id_category WHERE product.id_category = ?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setInt(1, id);
			return statement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

	public static void main(String[] args) throws SQLException {
		ResultSet set = getDataMangerProduct(3);
		while (set.next()) {
			 Product product = GetDataProduct.getProDuctById(set.getInt("id"));
			System.out.println(product.getIdCategory());
			
		}
//		ResultSet set= getDataSearch("camera");
//		while(set.next()) {
//			System.out.println(set.getString(2));
//		}
//		
//		
//		while (re.next()) {
//			System.out.println(re.getInt(2));
//
//		}
	}
}
// for (int i = 0; i < b.size(); i++) {
// if (b.get(i).getIdRoot() == 0) {
// System.out.println(b.get(i).getName());
//
//
// }
//
// }}
// }
