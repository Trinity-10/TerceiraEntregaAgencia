<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
    <style>

form {
    width: 300px;
    margin: 0 auto;
    background-color: #f5f5f5;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

h1 {
    text-align: center;
    color: #ff3333; / Vermelho /
}

label {
    display: block;
    margin-top: 10px;
    color: #ff3333; / Vermelho /
}

input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ff3333; / Vermelho /
    border-radius: 5px;
}

input[type="submit"] {
    background-color: #ff3333; / Vermelho /
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}

input[type="submit"]:hover {
    background-color: #cc0000; / Tom mais escuro de vermelho */
}

</style>
</head>
<body>
    <h1>Formulário de Registro</h1>

    <form action="CreateController" method="POST">
        <label for="nomeCliente">Nome:</label>
        <input type="text" id="nomeCliente" name="nomeCliente" required>
        <br><br>
        <label for="cpfCliente">CPF:</label>
        <input type="text" id="cpfCliente" name="cpfCliente" required>
        <br><br>
        <label for="enderecoCliente">Endereço:</label>
        <input type="text" id="enderecoCliente" name="enderecoCliente" required>
        <br><br>
        <label for="telefoneCliente">Telefone:</label>
        <input type="text" id="telefoneCliente" name="telefoneCliente" required>
        <br><br>
        <label for="emailCliente">Email:</label>
        <input type="text" id="emailCliente" name="emailCliente" required>
        <br><br>
        <input type="submit" value="Registrar">
    </form>
</body>
</html>