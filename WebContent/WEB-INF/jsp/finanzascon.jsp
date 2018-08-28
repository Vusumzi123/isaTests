<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registros</title>
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
		<form id="registrodatos"
			action="${ctx}/services/auth/resumen?${_csrf.parameterName}=${_csrf.token}"
			method="POST">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<div class="form-container tabcontent active" id="atras">
				<div class="registro-de-condominio">registro de condominio</div>
				<div class="contenedorimg">
					<div class="img-container" id="photo-circle"
						style="background-image: url('${ctx}/resources/img/imagenResidencia.svg')">
						<button type="button" class="cam" id="photo-button" onclick="addPhoto()">
							<i class="fas fa-camera"></i>
							<!-- <i class="fas fa-camera"></i> -->
						</button>
					</div>
					<input type="hidden" name="photobase64" id="photobase64">
					<input type="file" class="hidden" name="file-photo" id="file-photo">
				</div>
				<div class="container">
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="name1" class="bmd-label-floating">nombre del
								condominio</label> <input type="text" class="form-control" id="name1"
								name="name1">
						</div>
						<div class="form-group bmd-form-group">
							<button type="button" id="adj" onclick="addArchive()"
								class="btn btn-block d-flex justify-content-between btn-archivo"
								style="color: #07354d !important;">
								Subir reglamento (solo pdf)&nbsp;<i
									class="fas fa-paperclip rotate45"></i>
							</button>
							<button type="button" id="del" onclick="removeArchive()"
								class="btn btn-block d-flex justify-content-between btn-archivo hidden"
								style="color: #07354d !important;">
								<span id="nombre-arch"></span>&nbsp;<i class="fas fa-trash-alt"></i>
							</button>
							<input type="file" style="display: none" class="form-control"
								id="regulation" name="regulation">
							<input type="hidden" name="filebase64" id="filebase64">
						</div>
					</div>
					<div class="row">
						<div class="ubicacin-del-inmueble">ubicación del inmueble</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="country" class="bmd-label-floating">país</label> <input
								type="text" class="form-control" id="country" name="country">
						</div>
						<div class="form-group col-sm-6">
							<label for="cp" class="bmd-label-floating">código postal</label>
							<input type="text" class="form-control" id="cp" name="cp">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="city" class="bmd-label-floating">ciudad</label> <input
								type="text" class="form-control" id="city" name="city">
						</div>
						<div class="form-group col-sm-6">
							<label for="colonia" class="bmd-label-floating">colonia</label> <input
								type="text" class="form-control" id="colony" name="colony">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="street" class="bmd-label-floating">calle</label> <input
								type="text" class="form-control" id="street" name="street">
						</div>
						<div class="form-group col-sm-6">
							<label for="number" class="bmd-label-floating">número</label> <input
								type="text" class="form-control" id="number" name="number">
						</div>
					</div>
					<div class="row">
						<div class="contacto-del-inmueble">contacto del inmueble</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<label for="phone" class="bmd-label-floating">teléfono</label> <input
								type="text" class="form-control" id="phone" name="phone">
						</div>
						<div class="form-group col-sm-6">
							<label for="web" class="bmd-label-floating">página web</label> <input
								type="text" class="form-control" id="web" name="web">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-9"></div>
						<div class="siguiente col-sm-2">
							<button class="tablinks siguiente" type="button"
								onclick="changeTab(event, 'siguiente')">siguiente</button>
						</div>
					</div>
				</div>
			</div>
			<div class="form-container tabcontent" id="siguiente">
				<div class="finanzas-condominio">finanzas de condominio</div>
				<div id="cuadro-contenedor">
					<input id="contador" name="contador" type="hidden"></input>
				</div>
				<div class="agregar-cuenta">
					<button id="agregarcuenta" type="button"
						onclick="agregarCuadro(event,numeroCuadro)">agregar otra
						cuenta</button>
				</div>
				<div class="container1">
					<div class="form-group col-sm-6" style="max-width: 29% !important;">
						<label for="cuotamensual" class="bmd-label-floating">
							cuota mensual por vecino</label> <input type="text" class="form-control"
							id="cuotamensual" name="cuotamensual">
					</div>
				</div>
				<div class="barra-bot">
					<div class="logo-nav">
						<div class="tab">
							<button class="tablinks" type="button"
								onclick="changeTab(event, 'atras')" style="margin-top: -13px;">atras</button>
						</div>
					</div>
					<div class="siguiente">
						<button type="submit">siguiente</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="${ctx}/resources/js/finanzascon.js"></script>
</body>
</html>