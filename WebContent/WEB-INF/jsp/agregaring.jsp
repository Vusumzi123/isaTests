<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<tr id="contenedor-ingresos">
	<td>${ingresos1.getFecha()}</td>
	<td>${ingresos1.getConcepto()}</td>
	<td>${ingresos1.getCantidad()}</td>
	<td>${ingresos1.getComprobante()}</td>
</tr>
