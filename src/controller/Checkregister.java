package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;

import dao.ConectionDB;
import model.MD5;
import model.Mail;

/**
 * Servlet implementation class Checkregister
 */
@WebServlet("/Checkregister")
public class Checkregister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Checkregister() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String account = request.getParameter("account");
		String pass = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("numberPhone");
		String date = request.getParameter("ngaysinh");
		String tp = request.getParameter("id_tp");
		String address = request.getParameter("address")+tp;
		if (account == "" || pass == "" || email == "" ) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Vui lòng điền đầy đủ thông tin');");
			out.println("</script>");
		}else {

		try {
			if(dangky(name, account, pass, date, email, phone, address)) {  
				Mail.SendMailVerify(request.getContextPath()+"/VerifyMLC?account"+"="+account,email);
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Đăng kí thành công vui lòng xác nhận email');");
				out.println("</script>");
			}else {
			}
		} catch (Exception e) {
			System.err.println("sdasd" + e);

		}}
	}

	private static boolean dangky(String name, String account, String pass, String date, String email, String phone,
			String address) {

		try {
			Connection con = null;
			con = ConectionDB.getConection();
			String sql = "SELECT * FROM users WHERE users.account = ?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1,account);
			System.out.println(account);
			ResultSet set = statement.executeQuery();
			if (!set.next()) {
			String sqlUpdate = "INSERT INTO users values(0,?,?,?,?,?,?,?,1,0)";
				statement = con.prepareStatement(sqlUpdate);
				statement.setString(1, name);
				statement.setString(2, account);
				statement.setString(3, MD5.md5(pass));
				statement.setString(4, date.replace('-', '/'));
				statement.setString(5, email);
				statement.setString(6, phone);
				statement.setString(7, address);
				statement.execute();
				statement.close();
				return true;
			}

		} catch (MySQLIntegrityConstraintViolationException e) {
			System.err.println("Da co account");
			return false;
		}

		catch (Exception e) {
			System.err.println("sdasd" + e);
			return false;

		}
		return false;

	}
	public static void main(String[] args) {
		System.out.println(dangky("fdsf312s", "asda223231sd", "21312", "2018/12/12", "312312", "123123", "12312"));
	}
}
