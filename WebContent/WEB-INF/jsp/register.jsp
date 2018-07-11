<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro</title>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"
	integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
	crossorigin="anonymous"></script>

<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
	
<link rel="stylesheet"
	href="${ctx}/resources/register.css">
</head>
<body>
	<div class="barra-nav">
        <div class="logo-nav">
            <img class="banner-img3" 
            src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
        </div>
        <div class="titulo-container Regstro">
            Registro
        </div>
	</div>
		<div class="body-container">
			<form class="form-container" id="formulario" method="post" action="${pageContext.request.contextPath}/services/confirm">
				<div class="img-container" id="imgu" style="background-image: url('${pageContext.request.contextPath}/resources/img/imagenPerfil.svg')">
					<button class="cam">
							<i class="fas fa-camera"></i>
							<!-- <i class="fas fa-camera"></i> -->
					</button>
				</div>			
				<div class="row">
					<div class="input-field nombres col s12">
						<input id="name" name="nombres" type="text"
							class="validate"> <label for="name">nombre(s)</label>
					</div>
				
					<div class="input-field apellidos col s12">
						<input id="lastname" name="apellidos" type="text"
							class="validate"> <label for="lastname">apellido(s)</label>
					</div>
				
					<div class="input-field correo-electrnico col s12">
						<input id="email" name="email" type="email"
							class="validate"> <label for="email">correo electrónico</label>
					</div>
				
					<div class="input-field contrasea col s12">
						<input id="password" name="password" type="password"
							class="validate"> <label for="password">contraseña</label>
					</div>
				</div>
				<input type="submit" class="Crear-Cuenta Rectangle-242" value="Crear cuenta"> 
				<div class="o-Entrar-con-una-cuenta-existente">o 
					<a href="${pageContext.request.contextPath}/services/login">Entrar</a> 
					con una
					cuenta existente
				</div>
			</form>
		</div>
</body>
</html>