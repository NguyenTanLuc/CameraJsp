package controller;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.GetDataProduct;
import model.Product;

/**
 * Servlet implementation class SearchProduct
 */
@WebServlet("/SearchProduct")
public class SearchProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		todo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private void todo(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=UTF-8");
		String keyword = request.getParameter("keyword");
		ResultSet resultSet = GetDataProduct.getDataSearch(keyword);
		Product[] resultSearch = new Product[14];
		try {
			for (int i = 0; i < resultSearch.length; i++) {
				if (resultSet.next()) {
					Product product = new Product.Builder()
							.setId(resultSet.getInt("id"))
							.setName(resultSet.getString("name"))
							.setPrice(resultSet.getInt("price"))
							.setImage( resultSet.getString("img")).build();
							resultSearch[i] = product;
				}
				
			}
			resultSet.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Gson gson = new Gson();
		PrintWriter writer = new PrintWriter(new OutputStreamWriter(response.getOutputStream(),"UTF-8"),true);
		writer.println(gson.toJson(resultSearch));
		System.out.println(gson.toJson(resultSearch));
		
	}
}