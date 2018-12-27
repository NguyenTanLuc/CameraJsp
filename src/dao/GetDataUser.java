package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
				listUser.add(user);
			}

		} catch (Exception e) {
			System.err.println("Loi user connect: " + e);
		}
		return listUser;

	}

	public static void main(String[] args) {
		System.out.println(getAlluser());
	}

}
