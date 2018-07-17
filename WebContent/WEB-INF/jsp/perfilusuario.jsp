<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<div class="body-container">
		<form class="form-container-perfil">
			<div class="img-container-perfil" id="imgu"
				style="background-image: url('${pageContext.request.contextPath}/resources/img/imagenPerfil.svg')">
				<button class="cam">
					<i class="fas fa-camera"></i>
					<!-- <i class="fas fa-camera"></i> -->
				</button>
			</div>
			<div class="row">
				<div class="form-group bmd-form-group col s12">
					<input id="name" name="nombres" type="text" class="validate">
					<label class="bmd-label-floating" for="name">nombre(s)</label>
				</div>

				<div class="form-group bmd-form-group col s12">
					<input id="lastname" name="apellidos" type="text" class="validate">
					<label class="bmd-label-floating" for="lastname">apellido(s)</label>
				</div>

				<div class="form-group bmd-form-group col s12">
					<input id="email" name="email" type="email" class="validate">
					<label class="bmd-label-floating" for="email">correo
						electrónico</label>
				</div>

				<div class="form-group bmd-form-group col s12">
					<input id="password" name="password" type="password"
						class="validate"> <label class="bmd-label-floating"
						for="password">contraseña</label>
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			<input class="actualizar-datos-perfil Rectangle-242"
				value="Actualizar datos">
		</form>
	</div>
</body>
</html>