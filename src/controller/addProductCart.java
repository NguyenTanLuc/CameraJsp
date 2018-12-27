package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GetDataProduct;
import model.Product;

/**
 * Servlet implementation class addProductCart
 */
@WebServlet("/addProductCart")
public class addProductCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addProductCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		cart(request, response);
	}

	private void cart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("id"));
		int quality =Integer.parseInt(request.getParameter("quality"));
		String stt = request.getParameter("stt");
		PrintWriter writer = response.getWriter();
		Product product = GetDataProduct.getProDuctById(id);
		HttpSession session = request.getSession();
		if (product != null) {
			TreeMap<Integer, Integer> map = (TreeMap<Integer, Integer>) session.getAttribute("cart");
			if (map == null) {
				map = new TreeMap<Integer, Integer>();
				map.put(id, quality);
			} else {
				if (!map.containsKey(id)) {
					map.put(id, quality);
				} else {
					int cout = map.get(id);
					map.put(id, cout + quality);
				}
			}
			session.setAttribute("cart", map);
			if (stt== null) {
				response.sendRedirect("cart.jsp");
				
			}else {
			response.setContentType("application/json");
			writer.print(map.size());
		}
			}
			
	}
}