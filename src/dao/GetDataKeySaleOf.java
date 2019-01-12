package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.KeySaleOf;

public class GetDataKeySaleOf {
	public static KeySaleOf getKeySaleOfByKey(String keyIn) {
		KeySaleOf saleOf = null;
		try {
			Connection connection = ConectionDB.getConection();
			String sql = "SELECT * FROM sales_off WHERE sales_off.key = ?";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, keyIn);
			ResultSet resultSet = statement.executeQuery();
			resultSet.next();
			int id = resultSet.getInt("id");
			String title = resultSet.getString("title");
			String key = resultSet.getString("key");
			int percent = resultSet.getInt("percent");
			int quality = resultSet.getInt("number");
			int stt = resultSet.getInt("status");
			saleOf = new KeySaleOf(id, title, key, percent, quality, stt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return saleOf;
			
		
	}
	public static void main(String[] args) {
		System.out.println(getKeySaleOfByKey("ngu"));
		
	}

}
