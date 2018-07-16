<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finanzas de condominio</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"
	integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
	integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX"
	crossorigin="anonymous">
<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"
	integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U"
	crossorigin="anonymous"></script>
<script
	src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
	integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$('body').bootstrapMaterialDesign();
	});
</script>

<script>
	var contexto = "${pageContext.request.contextPath}";
</script>

<link rel="stylesheet" href="${ctx}/resources/finanzascon.css">
</head>
<body>
	<div class="barra-nav">
		<div class="logo-nav">
			<img class="banner-img3"
				src="${ctx}/resources/img/imagotipoHorizontal.svg">
		</div>
		<img class="imgusuario" src="${ctx}/resources/img/imagenPerfil.svg">
	</div>
	<div class="body-container">
		<form class="form-container" method="POST"
			action="${ctx}/services/resumen">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<div class="finanzas-condominio">finanzas de condominio</div>
			<div id="cuadro-contenedor">
				<input id="contador" name="contador" type="hidden"></input>
			</div>
			<div class="agregar-cuenta">
				<button id="agregarcuenta"
					onclick="agregarCuadro(event,numeroCuadro)">agregar otra
					cuenta</button>
			</div>
			<div class="container1">
				<div class="form-group col-sm-6">
					<label for="cuotamensual" class="bmd-label-floating"> cuota
						mensual por vecino</label> <input type="text" class="form-control"
						id="cuotamensual" name="cuotamensual">
				</div>
			</div>
			<div class="barra-bot">
				<div class="logo-nav">
					<div class="atras">
						<a href="${ctx}/services/registrocon">atras</a>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<div class="siguiente">
					<button>siguiente</button>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="${ctx}/resources/js/finanzascon.js"></script>
</body>
</html>