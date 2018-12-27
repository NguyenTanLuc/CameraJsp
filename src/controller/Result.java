package controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import dao.ConectionDB;

import java.sql.*;

public class Result {
	public static ResultSet re(String SQl) throws ClassNotFoundException, SQLException {
		PreparedStatement st =  ConectionDB.getConection().prepareStatement(SQl);
		
		return st.executeQuery(SQl);
		
	}
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		ResultSet a = re("SELECT name,icon FROM category WHERE id_root = 0");
	 while(a.next()) {
		 System.out.println(a.getString(2));
	 }
	}

}
