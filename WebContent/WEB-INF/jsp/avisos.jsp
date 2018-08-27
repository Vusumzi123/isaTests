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
			<c:if test="${isAdmin}">
				<form class="cuadro-chat-avisos" id="comment-form">
					<div class="row" style="width: 100% !important;">
						<div class="form-group col-sm-9">
							<label for="comment">Escribir mensaje...</label>
							<textarea id="text-com" name="text-com" class="form-control"
								rows="5">
							</textarea>
						</div>
						<div id="img-circle" style="width: 50px; height: 50px;"></div>
						<button type="button" id="img-button"
							class="subir-img-avisos col-sm-3" onclick="addImg()">
							<i class="far fa-image" style="font-size: 30px"></i>
						</button>
						<input type="hidden" name="imgbase64" id="imgbase64"> <input
							type="file" class="hidden" name="file-img" id="file-img">
					</div>
					<div class="boton1-avisos">
						<button id="agregar-texto" onclick="agregaComent()" type="button"
							class="publicar-avisos">Publicar</button>
					</div>
				</form>
			</c:if>
			<div class="linea-avisos"></div>
			<div id="avisos-container"></div>
			<c:forEach var="aviso" items="${avisos}">
				<div class="aviso1-avisos">
					<div class="row">
						<div class="usuario1-avisos col-sm-2"
							style="background-image: url('${aviso.getPhoto()}')"></div>
						<div class="usuario-dijo-avisos">
							${aviso.getName()} ${aviso.getLastname()} dijo...<br>
							<div class="fecha-post-avisos">${aviso.getDate()}</div>
						</div>
					</div>
					<div class="mensaje-escrito-avisos">${aviso.getMessage()}</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>