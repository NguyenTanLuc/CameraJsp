package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.User;

public class GetDataUser {
	public static ArrayList<User> getAlluser() {
		ArrayList<User> listUser = new ArrayList<>();
		try {
			Connection con = ConectionDB.getConection();
			String query = "SELECT * FROM users";

			PreparedStatement statement = con.prepareStatement(query);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				int id = set.getInt("id");
				String account = set.getString("account");
				String pass = set.getString("password");
				String name = set.getString("name");
				String email = set.getString("email");
				String phone = set.getString("phone_number");
				int idGroup = set.getInt("id_group");
				String address = set.getString("address");
				int status = set.getInt("status");
				String date = set.getString("dateBirth");
				User user = new User(id,name, account, pass, email, address, phone, idGroup, date, status);
				listUser.add(user);
			}
			set.close();
			statement.close();

		} catch (Exception e) {
			System.err.println("Loi user connect: " + e);
		}
		return listUser;

	}
	public static ResultSet getDataUserManager (int page) {
		Connection connection;
		if (page !=0 ) {
			page = page-1;
		}
		try {
			connection = ConectionDB.getConection();
			String sql ="SELECT users.*, groupuser.name as namegroup,user_status.name as namestatus FROM users INNER JOIN groupuser ON users.id_group = groupuser.id INNER JOIN user_status ON users.status = user_status.id LIMIT ?, 15" + 
					"";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, page * 15);
			return statement.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static User getUserFomResultSet(ResultSet set) throws SQLException {
			int id = set.getInt("id");
			String account = set.getString("account");
			String pass = set.getString("password");
			String name = set.getString("name");
			String email = set.getString("email");
			String phone = set.getString("phone_number");
			int idGroup = set.getInt("id_group");
			String address = set.getString("address");
			int status = set.getInt("status");
			String date = set.getString("dateBirth");
			User user = new User(id,name, account, pass, email, address, phone, idGroup, date, status);
			return user;
		
	}

	public static void main(String[] args) {
		System.out.println(getDataUserManager(1));
	}

}
