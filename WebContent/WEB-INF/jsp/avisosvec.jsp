<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="body-container">
	<div class="form-container-avisos">
		<div class="contenedor1-avisos">
			<div class="textoarriba">
				<h3>Avisos</h3>
			</div>
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