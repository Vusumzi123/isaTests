<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Configuración de inmueble</title>

<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"
	integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
	integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
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
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/resources/configinmueble.css">
</head>
<body>
	<nav class="barra-titulo">
	<div class="navbar navbar-expand-lg navbar-light bg-light barra-nav">
		<a
			class="navbar-brand d-flex justify-content-center align-items-center"
			href="#"> <img class="banner-img3"
			src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-lg-auto">
				<li class="nav-item active" id="finanzas"><a class="nav-link"
					rule="button" id="loadfinanzas"
					href="${pageContext.request.contextPath}/services/principal"
					style="font-size: 24px"> <i class="fas fa-dollar-sign"></i> <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" rule="button"
					id="agenda-vecinos" style="font-size: 24px"
					href="${pageContext.request.contextPath}/services/agendavecinos">
						<i class="fas fa-user-friends"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link" rule="button"
					id="avisos" style="font-size: 24px"
					href="${pageContext.request.contextPath}/services/avisos"> <i
						class="fas fa-comment-alt"></i>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" rule="button" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-bell"
						style="font-size: 24px"></i>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<div class="dropdown-item menu-header">Notificaciones</div>
						<a class="dropdown-item" href="#">no hay notificaciones</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" rule="button" id="notificaciones"
							href="${pageContext.request.contextPath}/services/notificaciones">Mostrar
							todo</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <img class="imgusuario"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<div class="dropdown-item menu-header">Usuario</div>
						<a class="dropdown-item"
							href="${pageContext.request.contextPath}/services/perfilusuario">
							<i class="fas fa-user"></i>&nbsp; Perfil de usuario
						</a> <a class="dropdown-item"
							href="${pageContext.request.contextPath}/services/reglamento">
							<i class="fas fa-file-alt"></i>&nbsp; Reglamento del condominio
						</a> <a class="dropdown-item" href="${pageContext.request.contextPath}/services/terminos"> <i
							class="fas fa-file-invoice"></i>&nbsp; Términos y condiciones
						</a> <a class="dropdown-item"
							href="${pageContext.request.contextPath}/services/configinmueble">
							<i class="fas fa-cogs"></i>&nbsp; Configuración de inmueble
						</a> <a class="dropdown-item"
							href="${pageContext.request.contextPath}/services/miscondominios">
							<i class="fas fa-home"></i>&nbsp; Mis condominios
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Salir</a>
					</div></li>
			</ul>
		</div>
	</div>

	<div
		class="navbar navbar-expand-lg navbar-light bg-light barra-nav d-flex justify-content-center">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<h3>Configuración de inmueble</h3>
			</li>
		</ul>
	</div>
</body>
</html>