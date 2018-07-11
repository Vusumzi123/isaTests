<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agenda de vecinos</title>

<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"
	integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
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
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/resources/agendavecinos.css">

<script>
	var contexto = "${ctx}"
</script>
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
				<li class="nav-item active"><a class="nav-link" href="#"
					style="font-size: 24px"> <i class="fas fa-dollar-sign"></i> <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="font-size: 24px"> <i class="fas fa-user-friends"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="font-size: 24px"> <i class="fas fa-comment-alt"></i>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-bell"
						style="font-size: 24px"></i>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<div class="dropdown-item menu-header">Notificaciones</div>
						<a class="dropdown-item" href="#">no hay notificaciones</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Mostrar todo</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <img class="imgusuario"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<div class="dropdown-item menu-header">Titulo</div>
						<a class="dropdown-item" href="#"> <i class="fas fa-user"></i>&nbsp;
							Perfil de usuario
						</a> <a class="dropdown-item" href="#"> <i class="fas fa-file-alt"></i>&nbsp;
							Reglamento del condominio
						</a> <a class="dropdown-item" href="#"> <i
							class="fas fa-file-invoice"></i>&nbsp; Términos y condiciones
						</a> <a class="dropdown-item" href="#"> <i class="fas fa-cogs"></i>&nbsp;
							Configuración de inmueble
						</a> <a class="dropdown-item" href="#"> <i class="fas fa-home"></i>&nbsp;
							Mis condominios
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
				<h3>Agenda de vecinos</h3>
			</li>
		</ul>
	</div>
	</nav>
	<div class="body-container">
		<div class="form-container">
			<div class="contenedor">
				<div class="row">
					<div class="col-sm-4">
						<div class="contenedor4">
							<form>
								<div>
									<input type="search" id="mySearch" name="q"
										placeholder="Buscar..." size="38" style="margin-top:13px; background-color: #f1f1f1">
									<button>
										<i class="fas fa-search"></i>
									</button>
								</div>
							</form>
							<div class="d-flex flex-column tab" style="margin-top: 11px">
								<button class="elemento1 p-4" onclick="cargaDatos(this)">
									<img class="img-elemento1"
										src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Henry
									Zapata
								</button>
								<button class="elemento1 p-4" onclick="cargaDatos(this)">
									<img class="img-elemento1"
										src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Joscelin
									Rojas
								</button>
								<button class="elemento1 p-4" onclick="cargaDatos(this)">
									<img class="img-elemento1"
										src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Alexis
									Negrete
								</button>
								<button class="elemento1 p-4" onclick="cargaDatos(this)">
									<img class="img-elemento1"
										src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Montserrat
									Casillas
								</button>
								<button class="elemento1 p-4" onclick="cargaDatos(this)">
									<img class="img-elemento1"
										src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Sergio
									Armando
								</button>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="form-container2">
							<div class="contenedor2">
								<div id="usuario" class="tabcontent active">
									<div class="contenedor3">
										<div class="row">
											<img class="img-derecha col-sm-4"
												src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
											<div class="contenedor5 col-sm-4">
												<div class="nombre">
													nombre <br>
													<div class=""></div>
												</div>
												<div class="vivienda">
													vivienda <br>
													<div class=""></div>
												</div>
											</div>
											<div class="correo col-sm-4">
												correo electrónico <br>
												<div class=""></div>
											</div>
										</div>
									</div>
									<div class="tab">
										<button class="tablinks" onclick="changeTab(event, 'pagos')">pagos</button>
										<button class="tablinks" onclick="changeTab(event, 'adeudos')">adeudos</button>
									</div>
									<div id="pagos" class="tabcontent active">
										<table class="table table-striped" style="width: 100%">
											<thead>
												<tr>
													<th>Fecha</th>
													<th>Concepto</th>
													<th>Cantidad</th>
													<th>Comprobante</th>
												</tr>
											</thead>
											<tbody id="tabla">


											</tbody>
										</table>
									</div>
									<div id="adeudos" class="tabcontent">
										<table class="table table-striped" style="width: 100%">
											<thead>
												<tr>
													<th>Fecha</th>
													<th>Concepto</th>
													<th>Cantidad</th>
													<th>Comprobante</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>28 junio 2018</td>
													<td>CUOTA MENSUAL JUNIO</td>
													<td><div class="cantidad1">$8,000</div></td>
													<td><button>detalles</button></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="${ctx}/resources/js/agendavecinos.js"></script>
</html>