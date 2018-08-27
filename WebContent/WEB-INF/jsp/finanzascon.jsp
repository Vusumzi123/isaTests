<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
	<div class="barra-nav">
		<div class="logo-nav">
			<img class="banner-img3"
				src="${ctx}/resources/img/imagotipoHorizontal.svg">
		</div>
		<img class="imgusuario" src="${ctx}/resources/img/imagenPerfil.svg">
	</div>
	<div class="body-container">
		<form id="registrodatos"
			action="${ctx}/services/admin/resumen?${_csrf.parameterName}=${_csrf.token}"
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