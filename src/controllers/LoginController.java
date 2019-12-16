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
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
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
		request.getRequestDispatcher("/WEB-INF/views/LoginForm.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Connection connection = DBConnection.getConnection();
			if (connection != null) {
				// Debug
				System.out.println("Connection: " + connection.toString());

				String wachtwoord = request.getParameter("wachtwoordL");
				String name = request.getParameter("nameL");

				String login = "SELECT `password` FROM `users` WHERE `username` = '" + name + "'";

				PreparedStatement prepareStatement = connection.prepareStatement(login);
				ResultSet resultSet = prepareStatement.executeQuery();

				String wachtwoorddb = "niks";
				while (resultSet.next()) {
					wachtwoorddb = resultSet.getString("password");
				}
				if (wachtwoorddb.equals(wachtwoord) && wachtwoorddb != null) {
					System.out.println("u word ingelogd");
					 request.getRequestDispatcher("/Ingelogd.jsp").forward(request,
							 response);
				} else {
					System.out.println("wachtwoord is niet juist");
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
