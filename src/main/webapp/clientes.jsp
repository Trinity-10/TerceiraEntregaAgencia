<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Around The World</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
  <header class="bg-primary p-3">

    <h1>Around The World</h1>
  </header>

  <!--inicio da navbar-->

  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.html">Home</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-link active" aria-current="page" href="destinos.html">Destinos</a>
          <a class="nav-link" href="promocoes.html">Promoções</a>
          <a class="nav-link" href="contato.html">Contato</a>
        </div>
      </div>
    </div>
  </nav>
    <!--fim da navbar-->

  <div class="container">

    <h2>Lista de Clientes</h2>
    <hr>
    <a href="cadastro.jsp" class="btn btn-primary mb-5">Criar novo</a>
    	<table class="table table-bordered">
    	<thead>
    	<tr>
    		<th>ID</th>
    		<th>NomeCliente</th>
    		<th>CpfCliente</th>
    		<th>EnderecoCliente</th>
    		<th>TelefoneCliente</th>
    		<th>EmailCliente</th>
    	</tr>
    		
    	
    	</table>
    </div>
    

    <br>

	<c:forEach items="${clientes}" var="cliente">    <!-- primeiro cliente: array, segundo: objeto -->
		<tr>
			<tr>${cliente.id}</tr>td>
			<td>${cliente.nomeCliente}</td>
			<td>${cliente.cpfCliente}</td>
			<td>${cliente.enderecoCliente}</td>
			<td>${cliente.telefoneCliente}</td>
			<td>${cliente.emailCliente}</td>
			<td>
				<a href="UpdateController?id=${cliente.id}" class="btn-success">Editar</a>
				<a href="DeleteController?id=$id=${cliente.id}" 
				class="btn btn-danger">Excluir</a>			
			</td>
			</tr>
			</c:forEach>




  <!-- Footer -->
  <footer class= "footer bg-light text-dark text-center p-4">
    <!--<footer class="containerfooter">-->
    <p><b>Formas de pagamento:</b></p>
    <img src="./imagens/formas-de-pagamento-ok.png" class="img-fluid" alt="Formas de pagamento">
    <p>&copy; Recode Pro 2023 - Desenvolvido por Josi Martins</p>
  </footer>

  <!-- Scripts -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>