package controller;

import java.io.IOException;
import java.util.TreeMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Updatecart
 */
@WebServlet("/Updatecart")
public class Updatecart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatecart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		todo(request, response);
	}
	public void todo (HttpServletRequest request ,HttpServletResponse response) throws ServletException,IOException{
		HttpSession session = request.getSession();
		TreeMap<Integer, Integer> map = (TreeMap<Integer, Integer>) session.getAttribute("cart");
		if (map==null) {
			response.sendRedirect("cart.jsp");
		}
		else {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String[] qualiti = request.getParameterValues("quality");
		String [] id = request.getParameterValues("id");
		for (int i = 0; i < id.length; i++) {
			int key = Integer.parseInt(id[i]);
			int value = Integer.parseInt(qualiti[i]);
			map.put(key, value);
		}
		request.setAttribute("cart", map);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Thanhtoan.jsp");
		dispatcher.forward(request, response);
		}
		
	}

}
