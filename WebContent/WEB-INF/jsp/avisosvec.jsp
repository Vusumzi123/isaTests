<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="body-container">
	<div class="form-container-avisos">
		<div class="contenedor1-avisos">
			<div class="textoarriba">
				<h3>Avisos</h3>
			</div>
			<c:forEach var="aviso" items="${avisos}">
				<div class="aviso1-avisos">
					<div class="usuario1-avisos col-sm-2"
						style="background-image: url('${aviso.getPhoto()}')"></div>
					<div class="usuario-dijo-avisos">
						${aviso.getName()} ${aviso.getLastname()} dijo...<br>

						<div class="fecha-post-avisos">${aviso.getDate()}</div>
					</div>
					<div class="mensaje-escrito-avisos">${aviso.getMessage()}</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>