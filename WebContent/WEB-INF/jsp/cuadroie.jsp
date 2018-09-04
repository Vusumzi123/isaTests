<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="form-container">
	<div id="todos" class="tabcontent table-tabs active">
		<table class="table table-striped" style="width: 100%">
			<thead>
				<tr>
					<th>Fecha</th>
					<th>Concepto</th>
					<th>Cantidad</th>
					<th>Comprobante todos</th>
				</tr>
			</thead>
			<tbody id="tabla-todos">

			</tbody>
		</table>
	</div>
	<div id="ingresos" class="tabcontent table-tabs">
		<table class="table table-striped" style="width: 100%">
			<thead>
				<tr>
					<th>Fecha</th>
					<th>Concepto</th>
					<th>Cantidad</th>
					<th>Comprobante ingresos</th>
				</tr>
			</thead>
			<tbody id="tabla-ingresos">

			</tbody>
		</table>
	</div>
	<div id="egresos" class="tabcontent table-tabs">
		<table class="table table-striped" style="width: 100%">
			<thead>
				<tr>
					<th>Fecha</th>
					<th>Concepto</th>
					<th>Cantidad</th>
					<th>Comprobante egresos</th>
				</tr>
			</thead>
			<tbody id="tabla-egresos">

			</tbody>
		</table>
	</div>
</div>