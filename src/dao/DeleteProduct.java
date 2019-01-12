package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteProduct {
	public static boolean deleteProduct (int id) throws SQLException {
		Connection connection = ConectionDB.getConection();
		String sql = "DELETE FROM product where product.id = ?";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setInt(1, id);
		int i = 0;
		return i!=statement.executeUpdate();
		
	}

}
