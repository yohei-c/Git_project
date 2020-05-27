package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	HttpSession session;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		session = request.getSession(false);
		
		if (session == null) {
			session = request.getSession(true);
			// session.setAttribute("cart", new ArrayList<ItemDto>());
		}
		
		doPost(request, response);
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		@SuppressWarnings("unchecked")
		ArrayList<ItemDto> cart = (ArrayList<ItemDto>) session.getAttribute("cart");
		if(cart == null) cart = new ArrayList<ItemDto>();
		
		ItemDto dto;
		
			dto = new ItemDto();
			dto.setId(Integer.parseInt(request.getParameter("id")));
			dto.setCode(Integer.parseInt(request.getParameter("code")));
			dto.setName(request.getParameter("name"));
			dto.setCategory(request.getParameter("category"));
			dto.setPrice(Integer.parseInt(request.getParameter("price")));
			cart.add(dto);

			session.setAttribute("cart", cart);

			System.out.println(cart);
		ServletContext context = getServletContext();
		RequestDispatcher dis = context.getRequestDispatcher("/manage.jsp");
		dis.forward(request, response);		
				
	}

}
