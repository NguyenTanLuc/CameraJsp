package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GetDataProduct;

/**
 * Servlet implementation class ShowProductAdmin
 */
@WebServlet("/ShowProductAdmin")
public class ShowProductAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowProductAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		showProduct(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public void showProduct (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println(request.getParameter("pagerow"));
		int page = Integer.parseInt(request.getParameter("pagerow"));
		ResultSet set = GetDataProduct.getDataMangerProduct(page);
		System.out.println(set);
		request.setAttribute("result", set);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/danhsachsanpham.jsp");
		dispatcher.forward(request, response);
		
	}

}
