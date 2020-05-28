package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.ItemDto;

/**
 * Servlet implementation class CartManageServlet
 */
@WebServlet("/CartManageServlet")
public class CartManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	HttpSession session;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		String index = request.getParameter("code");
		
		@SuppressWarnings("unchecked")
		ArrayList<ItemDto> cart = (ArrayList<ItemDto>) session.getAttribute("cart");
		
		
		cart.remove(Integer.parseInt(index));
			
			
		
		session.setAttribute("cart", cart);

		ServletContext context = getServletContext();
		RequestDispatcher dis = context.getRequestDispatcher("/SessionServlet");
		dis.forward(request, response);
	}

}
