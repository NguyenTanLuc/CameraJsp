package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
	Connection con;

	public DAO() throws SQLException {
		this.con = ConectionDB.getConection();
	}
	
	public  ResultSet getDataNav_Tab() {
		//PreparedStatement statement = con.prepareStatement(sql)
		return null;
		
	}

}
