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
					<div class="usuario1-avisos col-sm-2"
						style="background-image: url('${avisos.getPhoto()}')">
					</div>
					<div class="usuario-dijo-avisos">
						${avisos.getName()} ${avisos.getLastname()}
						dijo...<br>
						<div class="fecha-post-avisos">${avisos.getDate}</div>
					</div>
				</div>
				<div class="mensaje-escrito-avisos">${avisos.getMessage}</div>
			</div>
		</div>
	</div>
</div>