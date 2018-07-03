<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<link rel="stylesheet"
	href="${ctx}/resources/login.css">
</head>
<body>
	<div class="login-container">
		<div class="Rectangle-698">
			<img class="banner-img2"
				src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
			<div class="Iniciar-sesin">Iniciar sesión</div>
			<div class="row">
				<div class="input-field Correo-electronico col s12">
					<input id="email" type="email" class="validate"> <label
						for="email">correo electrónico</label>
				</div>
				<div class="input-field Contrasena col s12">
					<input id="password" type="password" class="validate"> <label
						for="password">contraseña</label>
				</div>
			</div>
			<a href="${pageContext.request.contextPath}/"></a>
			<button class="Iniciar-sesin2 Rectangle-706">Iniciar sesión
			</button>
			<div class="Has-olvidado-tu-contrasea">¿Has olvidado tu
				contraseña?</div>
			<div class="Todava-no-estas-registrado-en-isa">¿Todavia no
				estas registrado en isa?</div>
			<div class="Crear-Cuenta">
			<a href="${pageContext.request.contextPath}/services/register">Crear cuenta</a>
			</div>
		</div>
	</div>
</body>
</html>