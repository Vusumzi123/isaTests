<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Landing</title>
<link rel="stylesheet"
	href="${ctx}/resources/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="Rectangle-685">
		<div class="row">
			<div class="col-sm-11"></div>
			<div class="col-sm-1 Entrar">
				<a href="${pageContext.request.contextPath}/services/role">Entrar</a>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-5 parrafoi">
				<img class="banner-img"
					src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
				<p>
					Servicio en línea para<br> administración de inmuebles.
				</p>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-6 parrafod">
				<p>
					isa es un servicio web que te ayuda en la administración<br>
					de edificios y condominios de forma eficaz, sencilla, con<br>
					transparencia y una mejor comunicación.
				</p>

				<form action="${pageContext.request.contextPath}/services/register"
					method="get">
					<button class="Rectangle-242 Registrar" type="submit">
						<p>Registrarse</p>
					</button>
				</form>
			</div>
		</div>
	</div>
	<div class="Landing-isa">
		<div class="textoab">
			<p>isa te ofrece un servicio de cobro mensual. El precio de los
				planes depende del total de viviendas que desees administrar.</p>
		</div>
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-3 Rectangle-1167">
				<div class="-viviendas">
					<p>25 viviendas</p>
				</div>
				<div class="layer">
					<p>$241.00 /mes</p>
				</div>
			</div>
			<div class="col-sm-2"></div>
			<div class="col-sm-3 Rectangle-1167">
				<div class="-viviendas">
					<p>50 viviendas</p>
				</div>
				<div class="layer">
					<p>$359.00 /mes</p>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</body>
</html>