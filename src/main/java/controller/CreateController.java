package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;


import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import database.DatabaseConnection;
import model.Cliente;


@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Cliente cliente = new Cliente();
		
		cliente.setNomeCliente(req.getParameter("nomeCliente"));
		cliente.setCpfCliente(req.getParameter("cpfCliente"));
		cliente.setEnderecoCliente(req.getParameter("enderecoCliente"));
		cliente.setTelefoneCliente(req.getParameter("telefoneCliente"));
		cliente.setEmailCliente(req.getParameter("emailCliente"));
		
		//instancia do dao, que leva pro banco:
		
		
		try {
		ClienteDAO clienteDAO = new ClienteDAO();
		clienteDAO.createCliente(cliente);
		req.setAttribute("cliente",cliente);
		RequestDispatcher dispatcher = req.getRequestDispatcher("clientes.jsp");
		

		
		dispatcher.forward(req, res);


		}
		catch(Exception e) {
	        e.printStackTrace();
	    }
		
	}

}
