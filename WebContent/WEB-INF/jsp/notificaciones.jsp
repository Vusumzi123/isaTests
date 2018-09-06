<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="body-container">
<c:if test="${isAdmin}">
	<div class="form-container-notificaciones">
		<div class="textoarriba">
			<h3>Notificaciones</h3>
		</div>
		<div class="notificacion-novista-notificaciones">
			<div class="row">
				<div class="col-sm-3">
					<img class="img-usuario-notificaciones"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</div>
				<div class="col-sm-9">
					<div class="user-notificaciones">Joscelin Rojas</div>
					<div class="motivo-notificaciones">Te envió ficha de pago</div>
					<div class="fecha-notificaciones">30-abril-2018</div>
				</div>
			</div>
		</div>
		<div class="linea-notificaciones"></div>
		<div class="notificacion-vista-notificaciones">
			<div class="row">
				<div class="col-sm-3">
					<img class="img-usuario-notificaciones"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</div>
				<div class="col-sm-9">
					<div class="user-notificaciones">Henry Zapata</div>
					<div class="motivo-notificaciones">Te envió ficha de pago</div>
					<div class="fecha-notificaciones">30-abril-2018</div>
				</div>
			</div>
		</div>
		<div class="linea-notificaciones"></div>
		<div class="notificacion-vista-notificaciones">
			<div class="row">
				<div class="col-sm-3">
					<img class="img-usuario-notificaciones"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</div>
				<div class="col-sm-9">
					<div class="user-notificaciones">Montserrat Casillas</div>
					<div class="motivo-notificaciones">Te envió ficha de pago</div>
					<div class="fecha-notificaciones">29-abril-2018</div>
				</div>
			</div>
		</div>
	</div>
	</c:if>
	<c:if test="${!isAdmin}">
	<div class="form-container-notificaciones">
		<div class="textoarriba">
			<h3>Notificaciones</h3>
		</div>
		<div class="notificacion-novista-notificaciones">
			<div class="row">
				<div class="col-sm-2">
					<img class="img-usuario-notificaciones"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</div>
				<div class="col-sm-10">
					<div class="user-notificaciones">Henry Zapata</div>
					<div class="motivo-notificaciones">Te envió ficha de pago</div>
					<div class="fecha-notificaciones">30-abril-2018</div>
				</div>
			</div>
		</div>
		<div class="linea-notificaciones"></div>
		<div class="notificacion-vista-notificaciones">
			<div class="row">
				<div class="col-sm-2">
					<img class="img-usuario-notificaciones"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</div>
				<div class="col-sm-10">
					<div class="user-notificaciones">Henry Zapata</div>
					<div class="motivo-notificaciones">Se les recuerda que la
						fecha limite del pago mensual de mantenimiento es el 30 de abril.
						Saludo!</div>
					<div class="fecha-notificaciones">27-abril-2018</div>
				</div>
			</div>
		</div>
		<div class="linea-notificaciones"></div>
		<div class="notificacion-vista-notificaciones">
			<div class="row">
				<div class="col-sm-2">
					<img class="img-usuario-notificaciones"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</div>
				<div class="col-sm-10">
					<div class="user-notificaciones">Henry Zapata</div>
					<div class="motivo-notificaciones">Ya se han ingresado los
						montos del capital con el que contamos...</div>
					<div class="fecha-notificaciones">20-abril-2018</div>
				</div>
			</div>
		</div>
	</div>
	</c:if>
</div>