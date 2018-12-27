package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.MD5;
import model.User;

public class Login {
	public static User Login(String acc, String passw) {
		try {
			Connection con = ConectionDB.getConection();
			String sql = "SELECT * FROM users WHERE users.account = ? AND users.password = ?";
			String passMD5 = MD5.md5(passw);
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, acc);
			statement.setString(2, passMD5);
			ResultSet set = statement.executeQuery();
			if (set.next()) {
				String account = set.getString("account");
				String pass = set.getString("password");
				String name = set.getString("name");
				String email = set.getString("email");
				String phone = set.getString("phone_number");
				int idGroup = set.getInt("id_group");
				String address = set.getString("address");
				int status = set.getInt("status");
				String date = set.getString("dateBirth");
				User user = new User(name, account, pass, email, address, phone, idGroup, date, status);
				set.close();
				statement.close();
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
