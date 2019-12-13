package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBConnection;

/**
 * Servlet implementation class RegistreerController
 */
@WebServlet("/registreer")
public class RegistreerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistreerController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.print("GET");
		request.getRequestDispatcher("/WEB-INF/views/MyForm.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (!request.getParameter("name").isEmpty() && !request.getParameter("wachtwoord").isEmpty()
				&& !request.getParameter("email").isEmpty()) {
			request.getRequestDispatcher("/WEB-INF/views/Bedankt.jsp").forward(request, response);
			System.out.println("gegevens zijn verstuurd");

			try {
				Connection connection = DBConnection.getConnection();
				if (connection != null) {
					// Debug
					System.out.println("Connection: " + connection.toString());
					
					String wachtwoord = request.getParameter("wachtwoord");
					String name = request.getParameter("name");
					String email = request.getParameter("email");
					
					String registreer = "INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES (NULL, '"+name+"', '"+wachtwoord+"', '"+email+"')";
				 /*PreparedStatement prepareStatement = connection.prepareStatement(registreer);
				ResultSet resultSet = prepareStatement.executeQuery();*/
					Statement statement = connection.createStatement();
					statement.executeUpdate(registreer);
				System.out.println("INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES (NULL, '"+name+"', '"+wachtwoord+"', '"+email+"')");
				
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			System.out.println("error één of meerdere velden waren leeg");
		}
	}

}
