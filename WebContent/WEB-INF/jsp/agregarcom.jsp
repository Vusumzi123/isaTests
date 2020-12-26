<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="aviso1-avisos">
	<div class="row">
		<div class="usuario1-avisos col-sm-2"
			style="background-image: url('${principaladmins.getPhoto()}')"></div>
		<div class="usuario-dijo-avisos">
			${principaladmins.getName()} ${principaladmins.getLastname()} dijo...<br>
			<div class="fecha-post-avisos">${comment.getDate()}</div>
		</div>
	</div>
	<div class="mensaje-escrito-avisos">${comment.getBody()}</div>
</div>