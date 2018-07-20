<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="body-container">
	<form class="form-container-perfil">
		<div class="textoarriba">
			<h3>Perfil de usuario</h3>
		</div>
		<div class="img-container-perfil" id="imgu"
			style="background-image: url('${pageContext.request.contextPath}/resources/img/imagenPerfil.svg')">
			<button class="cam">
				<i class="fas fa-camera"></i>
				<!-- <i class="fas fa-camera"></i> -->
			</button>
		</div>
		<div class="row">
			<div class="form-group col-sm-12">
				<label for="name" class="bmd-label-floating">nombre(s)</label> <input
					type="text" class="form-control" id="name" name="name">
			</div>
			<div class="form-group col-sm-12">
				<label for="lastname" class="bmd-label-floating">apellido(s)</label>
				<input type="text" class="form-control" id="lastname"
					name="lastname">
			</div>
			<div class="form-group col-sm-12">
				<label for="email" class="bmd-label-floating">correo
					electrónico</label> <input type="email" class="form-control" id="email"
					name="email">
			</div>
			<div class="form-group col-sm-12">
				<label for="password" class="bmd-label-floating">contraseña</label>
				<input type="password" class="form-control" id="password"
					name="password">
			</div>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button class="actualizar-datos-perfil Rectangle-242-perfil">Actualizar
			datos</button>
	</form>
</div>
</body>
</html>