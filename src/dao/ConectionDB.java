package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectionDB {
	public static Connection con;
	String host ="localhost";
	String name ="shopcamera";
	static String user = "sa";
	static String pass ="YES";
	public static Connection getConection () throws SQLException {
		
		if (con == null) {
			
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/shopcamera?useUnicode=true&characterEncoding=utf-8","root","");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("not");
		}
		return con;
		}else {
			return con;
		}
	
	}
	
}
