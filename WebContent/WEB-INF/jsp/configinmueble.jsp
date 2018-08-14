<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="body-container">
	<form>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<div class="form-container">
			<div class="textoarriba">
				<h3>Configuración del inmueble</h3>
			</div>
			<div class="contenedorimg-config">
				<div class="img-container-config" id="archivo1" name="archivo1"
					style="background-image: url('${condominios.getPhotoc()}')">
					<button class="cam">
						<i class="fas fa-camera"></i>
						<!-- <i class="fas fa-camera"></i> -->
					</button>
				</div>
			</div>
			<div class="container-config">
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="name1" class="bmd-label-floating">nombre del
							condominio</label> <input type="text" class="form-control" id="name1"
							name="name1" value="${condominios.getNamec()}">
					</div>
					<div class="form-group bmd-form-group col-sm-6">
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
							id="archivo" name="archivo" value="${condominios.getRegulation()}">
					</div>
				</div>
				<div class="row">
					<div class="ubicacin-del-inmueble-config">ubicación del
						inmueble</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="country" class="bmd-label-floating">país</label> <input
							type="text" class="form-control" id="country" name="country" value="${condominios.getCountry()}">
					</div>
					<div class="form-group col-sm-6">
						<label for="cp" class="bmd-label-floating">código postal
						</label> <input type="text" class="form-control" id="cp"
							name="cp" value="${condominios.getCp()}">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="city" class="bmd-label-floating">ciudad</label> <input
							type="text" class="form-control" id="city" name="city" value="${condominios.getCity()}">
					</div>
					<div class="form-group col-sm-6">
						<label for="colonia" class="bmd-label-floating">colonia</label> <input
							type="text" class="form-control" id="colonia" name="colonia" value="${condominios.getColony()}">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="street" class="bmd-label-floating">calle</label> <input
							type="text" class="form-control" id="street" name="street" value="${condominios.getStreet()}">
					</div>
					<div class="form-group col-sm-6">
						<label for="number" class="bmd-label-floating">número</label> <input
							type="text" class="form-control" id="number" name="number" value="${condominios.getNumber()}">
					</div>
				</div>
				<div class="row">
					<div class="contacto-del-inmueble-config">contacto del
						inmueble</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-6">
						<label for="phone" class="bmd-label-floating">teléfono</label> <input
							type="text" class="form-control" id="phone" name="phone" value="${condominios.getPhone()}">
					</div>
					<div class="form-group col-sm-6">
						<label for="web" class="bmd-label-floating">página web</label> <input
							type="text" class="form-control" id="web" name="web" value="${condominios.getWeb()}">
					</div>
				</div>
			</div>
			<div id="cuadro-contenedor1">
				<input id="contador" name="contador" type="hidden"></input>
			</div>
			<div class="agregar-cuenta">
				<button id="agregarcuenta1" type="button"
					onclick="agregarCuadro1(event)"
					style="border: none; background-color: transparent; cursor: pointer;">agregar
					otra cuenta</button>
			</div>
			<div class="container1-config">
				<div class="form-group col-sm-6"
					style="margin-top: 10px; max-width: 31% !important;">
					<label for="cuotamensual" class="bmd-label-floating"> cuota
						mensual por vecino</label> <input type="text" class="form-control"
						id="cuotamensual" name="cuotamensual" value="${condominios.getCuotamensual()}">
				</div>
			</div>
			<div class="barra-bot-config">
				<div class="botonconfig">
					<button class="actualizar-datos-perfil Rectangle-242-perfil">Actualizar
						inmueble</button>
				</div>
			</div>
		</div>
	</form>
</div>