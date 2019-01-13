package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.Login;
import model.User;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckLogin() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CheckLoginUser(request, response);
		System.out.println("Asdasd");

	}

	private void CheckLoginUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String account = request.getParameter("account");
		System.out.println(account);
		String pass = request.getParameter("pass");
		Gson gson = new Gson();
		boolean errInput = false;
		String errUserLogin = "";
		String errUser = "";
		String errVerify;
		Map<String, Object> map = new HashMap<String, Object>();
		if (account.equals("") || account.equals(null) || pass.equals("") || account.equals(null)) {
			errInput = true;
			errUser = "Vui lòng điền tên đăng nhập và mật khẩu của bạn !";
			response.getWriter().println(errUser);
			return;
		}

		if (errInput == false) {
			User user = Login.Login(account, pass);
			if (user == null) {
				errUserLogin = "Tài khoản hoặc mật khẩu không đúng. Vui lòng thử lại !";
				response.getWriter().println(errUserLogin);

			} else {
				if (user.getStatus() == 0) {
					errVerify = "Tài khoản chưa được xác nhận Email.Vui lòng xác thực!";
					response.getWriter().println(errVerify);
				} else {
					HttpSession session = request.getSession();
					String userjs = gson.toJson(user);
					response.getWriter().println(userjs);
					session.setAttribute("user", user);
				}
			}

		}

	}

	public static void main(String[] args) {
		System.out.println(Login.Login("nguyentanlucpro4", "12345"));
	}

}
