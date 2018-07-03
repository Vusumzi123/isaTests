<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro de condominio</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>

<!--   fontawesome -->
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

<!-- style -->
<link rel="stylesheet"
	href="${ctx}/resources/registrocon.css">
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
			<div class="registro-de-condominio">registro de condominio</div>
			<div class="img-container"
				style="background-image: url('${pageContext.request.contextPath}/resources/img/imagenResidencia.svg')">
				<button class="cam">
					<i class="fas fa-camera"></i>
					<!-- <i class="fas fa-camera"></i> -->
				</button>
			</div>
			<div class="container">
				<div class="row">
					<div>
						<div class="input-field nombre-del-condominio col s12">
							<input id="name1" type="text" class="validate"> <label
								for="name1">nombre del condominio</label>
						</div>
						<div class="file-field input-field subir col s12">
							<div class="btn">
								<span>subir reglamento</span> <input type="file">
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text">
							</div>
						</div>
					</div>
					<div class="ubicacin-del-inmueble">ubicación del inmueble</div>
					<div>
						<div class="input-field pais col s12">
							<input id="country" type="text" class="validate"> <label
								for="country">país</label>
						</div>
						<div class="input-field codigo-postal col s12">
							<input id="cp" type="text" class="validate"> <label
								for="cp">código postal</label>
						</div>
					</div>
					<div>
						<div class="input-field ciudad col s12">
							<input id="city" type="text" class="validate"> <label
								for="city">ciudad</label>
						</div>
						<div class="input-field colonia col s12">
							<input id="colonia" type="text" class="validate"> <label
								for="colonia">colonia</label>
						</div>
					</div>
					<div>
						<div class="input-field calle col s12">
							<input id="street" type="text" class="validate"> <label
								for="street">calle</label>
						</div>
						<div class="input-field numero col s12">
							<input id="number" type="text" class="validate"> <label
								for="number">número</label>
						</div>
					</div>
					<div class="contacto-del-inmueble">contacto del inmueble</div>
					<div>
						<div class="input-field telefono col 12">
							<input id="phone" type="text" class="validate"> <label
								for="phone">teléfono</label>
						</div>
						<div class="input-field pagina-web col 12">
							<input id="web" type="text" class="validate"> <label
								for="web">página web</label>
						</div>
					</div>
					<div class="siguiente">
						<a href="${pageContext.request.contextPath}/services/finanzascon">siguiente</a>
					</div>
				</div>
			</div>
		</form>
	</div>
	<script>
		$(document).ready(function() {
			$('input#input_text, textarea#textarea2').characterCounter();
		});
	</script>
</body>
</html>