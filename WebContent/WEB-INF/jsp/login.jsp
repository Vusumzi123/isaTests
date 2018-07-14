<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />
<!-- ... -->
<title>Login</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>

<script>
	var contexto = "${ctx}";
</script>

<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<link rel="stylesheet" href="${ctx}/resources/login.css">
</head>
<body>
	<div class="login-container">
		<div class="Rectangle-698">
			<img class="banner-img2"
				src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
			<div class="Iniciar-sesin">Iniciar sesión</div>
			<form id="formulario" method="POST" action="${ctx}/services/login">
				<div class="row">
					<div class="input-field Correo-electronico col s12">
						<input id="uemail" name="username" type="email" class="validate">
						<label for="uemail">correo electrónico</label>
					</div>
					<div class="input-field Contrasena col s12">
						<input id="ucontrasena" name="password" type="password"
							class="validate"> <label for="ucontrasena">contraseña</label>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<div class="boton">
					<button class="Iniciar-sesin2 Rectangle-706" type="submit"
						name="but_submit" id="but_submit">Iniciar sesión</button>
				</div>
			</form>
			<c:if test="${param.error != null}">
				<div id="message">Correo y contraseña son inválidos!</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div id="logout">You have been logged out.</div>
			</c:if>
			<div class="Has-olvidado-tu-contrasea">¿Has olvidado tu
				contraseña?</div>
			<div class="Todava-no-estas-registrado-en-isa">¿Todavia no
				estas registrado en isa?</div>
			<div class="Crear-Cuenta">
				<a href="${pageContext.request.contextPath}/services/register">Crear
					cuenta</a>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${ctx}/resources/js/login.js"></script>
</html>