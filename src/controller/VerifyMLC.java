package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ConectionDB;

/**
 * Servlet implementation class VerifyMLC
 */
@WebServlet("/VerifyMLC")
public class VerifyMLC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VerifyMLC() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		VerifyPass(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private boolean VerifyPass(HttpServletRequest request, HttpServletResponse response) {
		String account = request.getParameter("account");
		System.out.println(account);
		try {
			Connection con = null;
			con = ConectionDB.getConection();
			String sql = "SELECT status FROM users WHERE users.account = ?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, account);
			System.out.println(account);
			ResultSet set = statement.executeQuery();
			if (set.next()) {
				if (set.getInt("status") ==0) {
					System.out.println("ádas");
					statement = con.prepareStatement("UPDATE users SET status =1 WHERE account = ?");
					statement.setString(1, account);
					statement.executeUpdate();
					response.getWriter().println("User đã xác nhận");
				}
				else {
				response.getWriter().println("User cc");
				}
			}
		} catch (Exception e) {
			
		}
		return false;

	}

}
