<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Finanzas</title>

<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"
	integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
	crossorigin="anonymous"></script>

<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="${ctx}/resources/prfinanzas.css">
</head>
<body>
	<div class="barra-nav">
		<div class="logo-nav">
			<img class="banner-img3"
				src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
		</div>
		<img class="imgusuario"
			src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
		<div class="linea"></div>
		<div class="finanzas">finanzas</div>
	</div>
	<div class="body-container">
		<div class="rectangulo1">
			<div class="form-container">
				<div class=""></div>
				<div class="container">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="cuadro-carousel" alt="First slide">
									<div class="renglon1">CUENTA 1</div>
									<div class="renglon2">**** 3896</div>
									<div class="renglon3">$95,700 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-2"></div>
											<div class="ingresos-mes col-sm-3">
												Ingresos del mes <br>
												<div class="cantidad-ingresos">$89,000.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-3">
												Egresos del mes <br>
												<div class="cantidad-egresos">$14,000.00</div>
											</div>
											<div class="col-sm-2"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="cuadro-carousel" alt="Second slide"></div>
							</div>
							<div class="carousel-item">
								<div class="cuadro-carousel" alt="Third slide"></div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
					<div class="row">
						<div class="col-sm-2"></div>
						<button class="boton1 registrar-ingreso col-sm-3">registrar
							ingreso</button>
						<div class="col-sm-2"></div>
						<button class="boton2 registrar-egreso col-sm-3">registrar
							egreso</button>
						<div class="col-sm-2"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="tab">
				<button class="tablinks" onclick="changeTab(event, 'todos')">todos</button>
				<button class="tablinks" onclick="changeTab(event, 'ingresos')">ingresos</button>
				<button class="tablinks" onclick="changeTab(event, 'egresos')">egresos</button>
			</div>
			<div id="todos" class="tabcontent active" style="width: 100%">
				<table class="striped centered">
					<thead>
						<tr>
							<th>Fecha</th>
							<th>Concepto</th>
							<th>Cantidad</th>
							<th>Comprobante</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>29 de junio</td>
							<td>Cuota mensual Fulano</td>
							<td>$40,000</td>
							<td></td>
						</tr>
						<tr>
							<td>29 de junio</td>
							<td>Alta caja chica</td>
							<td>$12,000</td>
							<td></td>
						</tr>
						<tr>
							<td>28 de junio</td>
							<td>Alta tarjeta de credito</td>
							<td>$37,000</td>
							<td></td>
						</tr>
						<tr>
							<td>28 de junio</td>
							<td>Servicio de luz</td>
							<td>$5,000</td>
							<td><i class="fas fa-download"></i></td>
						</tr>
						<tr>
							<td>27 de junio</td>
							<td>Servicio de agua</td>
							<td>$9,000</td>
							<td><i class="fas fa-download"></i></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="ingresos" class="tabcontent">
				<table class="striped centered" style="width: 100%">
					<thead>
						<tr>
							<th>Fecha</th>
							<th>Concepto</th>
							<th>Cantidad</th>
							<th>Comprobante</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>29 de junio</td>
							<td>Cuota mensual Fulano</td>
							<td>$40,000</td>
							<td></td>
						</tr>
						<tr>
							<td>29 de junio</td>
							<td>Alta caja chica</td>
							<td>$12,000</td>
							<td></td>
						</tr>
						<tr>
							<td>28 de junio</td>
							<td>Alta tarjeta de credito</td>
							<td>$37,000</td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="egresos" class="tabcontent">
				<table class="striped centered" style="width: 100%">
					<thead>
						<tr>
							<th>Fecha</th>
							<th>Concepto</th>
							<th>Cantidad</th>
							<th>Comprobante</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>28 de junio</td>
							<td>Servicio de luz</td>
							<td>$5,000</td>
							<td><i class="fas fa-download"></i></td>
						</tr>
						<tr>
							<td>27 de junio</td>
							<td>Servicio de agua</td>
							<td>$9,000</td>
							<td><i class="fas fa-download"></i></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script>
		function changeTab(evt, tab) {
			var activeTabs = $('.active');
			activeTabs.each(function() {
				$(this).removeClass('active');
			})
			var toActivete = $('#' + tab);
			toActivete.addClass('active');
		}
	</script>
</body>
</html>