package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import database.DatabaseConnection;
import model.Cliente;


public class ClienteDAO {

    private static String sql;

    private final Connection connection;

    public ClienteDAO()throws SQLException {
        connection = DatabaseConnection.createConnection();
    }

public void fecharConexao() {
    try {
        if (connection != null && !connection.isClosed()) {
            connection.close();
            System.out.println("Conexão com o banco de dados foi fechada.");
        }
    } catch (SQLException e) {
        System.out.println("[LOG] Não foi possível fechar a conexão. Mensagem: " + e.getMessage());
    }
}


    public void createCliente(Cliente cliente) {
        sql = "INSERT INTO cliente (nome, cpf, endereco, telefone, email) VALUES (?,?,?,?,?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, cliente.getNomeCliente());
            stmt.setString(2, cliente.getCpfCliente());
            stmt.setString(3, cliente.getEnderecoCliente());
            stmt.setString(4, cliente.getTelefoneCliente());
            stmt.setString(5, cliente.getEmailCliente()); //
            stmt.executeUpdate();

        } catch (SQLException e) {
            System.out.println("[LOG] Nao foi possível criar o cliente. Mensagem: " + e.getMessage());
        }

    }

    public List<Cliente> findClients() {
	Cliente client = null;
	sql = "SELECT *  FROM cliente";

	List<Cliente> clientes = new ArrayList<Cliente>();
	ResultSet r = null;
	try (PreparedStatement stmt = connection.prepareStatement(sql)) {

     r = stmt.executeQuery();

    while (r.next()) {
        Cliente cliente = new Cliente();
        cliente = new Cliente();
        cliente.setIdCliente(r.getInt("idCliente"));
        cliente.setNomeCliente(r.getString("nomeCliente"));
        cliente.setCpfCliente(r.getString("cpfCliente"));
        cliente.setEnderecoCliente(r.getString("enderecoCliente"));
        cliente.setTelefoneCliente(r.getString("telefoneCliente"));
        cliente.setEmailCliente(r.getString("emailCliente"));

        clientes.add(cliente);

    }
	} catch (Exception e) {
		e.printStackTrace();

	}
	return clientes;

	} 


    }