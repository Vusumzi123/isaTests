<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="aviso1-avisos">
	<div class="row">
		<img class="usuario1-avisos col-sm-2"
			src="${avisos.getPhoto()}">
		<div class="usuario-dijo-avisos">
			${comment.getIdUser()} dijo...<br>
			<div class="fecha-post-avisos">${comment.getDate()}</div>
		</div>
	</div>
	<div class="mensaje-escrito-avisos">${comment.getBody()}</div>
</div>