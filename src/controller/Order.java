package controller;

import java.io.IOException;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GetDataKeySaleOf;
import dao.GetDataProduct;
import model.KeySaleOf;
import model.Product;
import model.User;

/**
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Order() {
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
		// TODO Auto-generated method stub
		billOder(request, response);
		doGet(request, response);
	}

	private void billOder(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		TreeMap<Integer, Integer> cart = (TreeMap<Integer, Integer>) session.getAttribute("cart");
		int idUser = user.getId();
		KeySaleOf keyIn = null;
		String address = null;
		long total = getTotalPrice(cart);
		String phone = user.getPhone();
		String keysale = null;
		if (request.getParameter("address") == null) {
			address = user.getAddress();
		} else {
			address = request.getParameter("address");
		}
		if (request.getParameter("keysaleof") != null) {
			keyIn = GetDataKeySaleOf.getKeySaleOfByKey(request.getParameter("keysaleof"));
			if (keyIn !=null) {
				keysale = request.getParameter("keysaleof");
			}
		}
		
		
		
		
		System.out.println(idUser + address + keysale + phone);

	}

	private long getTotalPrice(TreeMap<Integer, Integer> cart) {
		Set<Entry<Integer, Integer>> setTreeMap = cart.entrySet();
		long total = 0;
		for (Entry<Integer, Integer> entry : setTreeMap) {
			Product product = GetDataProduct.getProDuctById(entry.getKey());
			double price = product.getPrice() * entry.getValue();
			total += price;
		}
		return total;

	}
}
