package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ConectionDB;

/**
 * Servlet implementation class CategoryLoad
 */
@WebServlet("/CategoryLoad")
public class CategoryLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryLoad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idRow = Integer.parseInt(request.getParameter("id"));
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}
	public static String getHeaderById(int id) {
		try {
			Connection con = ConectionDB.getConection();
			String sql ="SELECT category.name FROM category WHERE category.id = ?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet set = statement.executeQuery();
			if (set.next()) {
				return set.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static ResultSet getCatogoryByIdRoot (int idRoot) {
		try {
			Connection con = ConectionDB.getConection();
			String sql = "SELECT catogory.name , product.* FROM product INNER JOIN catogory ON product.id_catogoy = catogogy.id WHERE "
		}
	}
//	public static ArrayList<Catelogy> ContentHeader ()
	public static void main(String[] args) {
	System.out.println(	getHeaderById(2));
		
	}

}
