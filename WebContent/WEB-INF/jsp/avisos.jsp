<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="body-container">
	<div class="form-container-avisos">
		<div class="contenedor1-avisos">
			<div class="textoarriba">
				<h3>Avisos</h3>
			</div>
			<form class="cuadro-chat-avisos" id="comment-form">
				<div class="row">
					<img class="usuario1-avisos col-sm-2"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
					<div class="form-group col-sm-8">
						<label for="comment">Escribir mensaje...</label>
						<textarea id="text-com" name="text-com" class="form-control"
							rows="5"></textarea>
					</div>
					<button role="button" type="file" class="subir-img-avisos col-sm-2">
						<i class="far fa-image" style="font-size: 30px"></i>
					</button>
				</div>
				<div class="boton1-avisos">
					<button id="agregar-texto" onclick="agregaComent()" type="button"
						class="publicar-avisos">Publicar</button>
				</div>
			</form>
			<div class="linea-avisos"></div>
			<div id="avisos-container"></div>
			<div class="aviso1-avisos">
				<div class="row">
					<img class="usuario1-avisos col-sm-2"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
					<div class="usuario-dijo-avisos">
						Henry Zapata dijo... <br>
						<div class="fecha-post-avisos">01-julio-2018</div>
					</div>
				</div>
				<div class="mensaje-escrito-avisos">Ya se han ingresado los
					montos del capital con el que contamos. En la tarjeta de débito
					tenemos $40,000.00 y en caja chica $16,500.00, hacen un total de
					$56,500.00.</div>
			</div>
		</div>
	</div>
</div>