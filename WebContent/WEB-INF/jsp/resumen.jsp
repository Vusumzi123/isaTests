<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resumen</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$('body').bootstrapMaterialDesign();
	});
</script>
<link rel="stylesheet" href="${ctx}/resources/resumen.css">
</head>
<body>
	<div class="barra-nav">
		<div class="logo-nav">
			<img class="banner-img3"
				src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
		</div>
		<img class="imgusuario"
			src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
	</div>
	<div class="body-container">
		<form class="form-container">
			<div class="resumen">resumen</div>
			<div class="rectangulo">
				<div class="row" style="width: 100%; display: flex; align-items: center;">
					<div class="contenido col-sm-6 mx-0">
						<div class="img-container"
							style="background-image: url('${condominio.getPhotoc()}'), url('${pageContext.request.contextPath}/resources/img/imagenResidencia.svg') ">
						</div>
					</div>
					<div class="contenido1 col-sm-6 mx-0">
						<div class="datos-condominio">datos del condominio</div>
						<div class="nombre-condominio">nombre del condominio</div>
						<div class="nombre-condominio111">${condominio.getNamec()}</div>
						<div class="direccion">dirección</div>
						<div class="direccion111">
							<p>
								${condominio.getStreet()} ${condominio.getNumber()},<br>
								${condominio.getColony()}, ${condominio.getCity()},<br>
								${condominio.getCp()}, ${condominio.getCountry()}
							</p>
						</div>
						<div class="contactos">contactos</div>
						<div class="contactos111">
							<p>
								${condominio.getPhone()}<br> ${condominio.getWeb()}
							</p>
						</div>
						<div class="reglamento">reglamento</div>
						<div class="reglamento111">
							<p>
								<a href="${condominio.getRegulation()}" target="_blank">${nameRegulation}</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<c:forEach var="finan" items="${condominio.getFinanzas()}">
					<div class="rectangulo1 col-sm-6">
						<div class="cuenta">cuenta</div>
						<div class="alias111">${finan.getAlias()}</div>
						<div class="tipo111">${finan.getTipo()}</div>
						<div class="monto-inicial111">${finan.getMontoinicial()}</div>
						<div class="numero-de-cuenta">número de cuenta</div>
						<div class="numero-de-cuenta111">${finan.getNumerocuenta()}</div>
						<div class="numero-de-tarjeta">número de tarjeta</div>
						<div class="numero-de-tarjeta111">${finan.getNumerotarjeta()}</div>
						<div class="numero-clabe">número de cuenta clabe</div>
						<div class="numero-clabe111">${finan.getNumeroclabe()}</div>
					</div>
				</c:forEach>
			</div>
			<div class="rectangulo2">
				<div class="cuota-mensual">cuota mensual por vecino</div>
				<div class="cuota-mensual111">${cuotamensual}</div>
			</div>
			<div class="barra-bot">
				<div class="logo-nav">
					<div class="atras">
						<a
							href="${pageContext.request.contextPath}/services/auth/finanzascon">atras</a>
					</div>
				</div>
				<div class="finalizar">
					<a
						href="${pageContext.request.contextPath}/services/auth/condominios">finalizar</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>