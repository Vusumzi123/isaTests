<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alta de vecinos</title>
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

<link rel="stylesheet"
	href="${ctx}/resources/altavecinos.css">
</head>
<body>
	<div class="barra-nav">
		<div class="logo-nav">
			<img class="banner-img3"
				src="/isaWar/resources/img/imagotipoHorizontal.svg">
		</div>
		<img class="imgusuario" src="/isaWar/resources/img/imagenPerfil.svg">
	</div>
	<div class="body-container">
		<form class="contenido">
			<div class="alta-vecinos">alta de vecinos</div>
			<div class="tab">
				<button class="tablinks" onclick="changeTab(event, 'vecinos')">vecinos</button>
				<button class="tablinks"
					onclick="changeTab(event, 'sub-administradores')">sub-administradores</button>
			</div>
			<div id="vecinos" class="tabcontent active">
				<div class="container">
					<div class="texto1">Invita a tus vecinos a ser parte de este
						condominio. Ingresa su correo</div>
					<div class="contenido1">
						<div class="input-field invitacion-correo">
							<input id="correo" type="text" class="validate"> <label
								for="correo">invitar con correo electrónico</label>
						</div>
						<div class="contador-viviendas">Viviendas restantes:${num}</div>
					</div>
					<div class="row" style="width: 100%">
						<div class="descargar Rectangle-1130 col s12">
							<button>descargar formato</button>
						</div>
						<div class="subir Rectangle-1130 col s12">
							<button>subir formato</button>
						</div>
					</div>
					<div class="continuar">
						<a href="${pageContext.request.contextPath}/services/prfinanzas">continuar</a>
					</div>
				</div>
			</div>
		</form>
	</div>
	<script>
		function changeTab(evt, tab) {
			var activeTabs = $('.active');
			activeTabs.each(function() {
				$(this).removeClass('active');
			})

			var toActivete = $('#' + tab);
			toActivete.addClass('active');
		}
	</script>
	<script>
		$(document).ready(function() {
			$('input#input_text, textarea#textarea2').characterCounter();
		});
	</script>
</body>
</html>