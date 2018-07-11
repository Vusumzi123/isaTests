<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmación</title>

<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<link rel="stylesheet"
	href="${ctx}/resources/confirm.css">
</head>
<body>
	<div class="body-container">
		<div class="bar">
			&nbsp;
		</div>
		<div class="content">
			<div class="centered">
				<img class= "imagen" src="${pageContext.request.contextPath}/resources/img/iconoVerificacion.svg">
				<div class="Verifica-tu-correo-electrnico">
					Verifica tu correo electrónico
				</div>
				<div class="Hemos-enviado-un-correo-electrnico-de-verificacin-a">
					Hemos enviado un correo electrónico de verificación a
				</div>
				<div class="hzapatasupaadamx">
					${email}
				</div>
				<div class="Haz-clic-en-el-enlace-del-correo-electrnico-para-empezar">
					Haz click en el enlace del correo para empezar
				</div>
				<div class="No-has-recibido-tu-correo">
					¿No has recibido tu correo?
				</div>
				<a href="#"></a>
			</div>
		</div>
		<div class="bar bottom">
			&nbsp;
		</div>
	</div>
</body>
</html>