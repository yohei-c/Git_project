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
 * Servlet implementation class CashServlet
 */
@WebServlet("/CacheServlet")
public class CacheServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	HttpSession session;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		
		@SuppressWarnings("unchecked")
		ArrayList<ItemDto> cart = (ArrayList<ItemDto>) session.getAttribute("cart");
		
		
		
		int total = 0;
		
		for(ItemDto item: cart) {
			total += item.getPrice();
			
		}
		System.out.println(total);
		
		session.setAttribute("total", total);
		
		ServletContext context = getServletContext();
		RequestDispatcher dis = context.getRequestDispatcher("/Cache.jsp");
		dis.forward(request, response);		
	}
	

}