package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Catelogy;

public class GetDataCategory {
	ArrayList<Catelogy> list = new ArrayList<>();
		
	public ArrayList<Catelogy> getAllCategory() throws SQLException{
		Connection conect = ConectionDB.getConection();
		String query = "SELECT * FROM category";
		PreparedStatement statement = conect.prepareStatement(query);
		ResultSet rSet = statement.executeQuery();
		while(rSet.next()) {
			int id = rSet.getInt("id");
			String name = rSet.getString("name");
			int id_root = rSet.getInt("id_root");
			int status = rSet.getInt("status");
			String icon = rSet.getString("icon");
			list.add(new Catelogy(id, name, id_root, status, icon));
				

			}
		return list;
		
	}
	public static Catelogy getCategoryById (int id) {
		Catelogy catego = null;
		try {
		Connection conect = ConectionDB.getConection();
		String query = "SELECT * FROM category WHERE category.id ="+id;
		PreparedStatement statement = conect.prepareStatement(query);
		ResultSet rSet = statement.executeQuery();
		rSet.next();
			int idca = rSet.getInt("id");
			String name = rSet.getString("name");
			int id_root = rSet.getInt("id_root");
			int status = rSet.getInt("status");
			String icon = rSet.getString("icon");
			catego =new Catelogy(idca, name, id_root, status, icon);
		}catch (Exception e) {
			System.err.println("Loi GetCategoryByID :"+e);
		
			
		}
				
return catego;
			}
	
		
	}


