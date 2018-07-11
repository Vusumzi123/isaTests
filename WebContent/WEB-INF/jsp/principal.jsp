<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Principal</title>

<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"
	integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
	integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"
	integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U"
	crossorigin="anonymous"></script>
<script
	src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
	integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$('body').bootstrapMaterialDesign();
	});
</script>
<script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/js/gijgo.min.js"
	type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.6/css/gijgo.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}/resources/principal.css">
</head>
<body>
	<nav class="barra-titulo">
	<div class="navbar navbar-expand-lg navbar-light bg-light barra-nav">
		<a
			class="navbar-brand d-flex justify-content-center align-items-center"
			href="#"> <img class="banner-img3"
			src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-lg-auto">
				<li class="nav-item active"><a class="nav-link" href="#"
					style="font-size: 24px"> <i class="fas fa-dollar-sign"></i> <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="font-size: 24px"> <i class="fas fa-user-friends"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					style="font-size: 24px"> <i class="fas fa-comment-alt"></i>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-bell"
						style="font-size: 24px"></i>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<div class="dropdown-item menu-header">Notificaciones</div>
						<a class="dropdown-item" href="#">no hay notificaciones</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Mostrar todo</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <img class="imgusuario"
						src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<div class="dropdown-item menu-header">Usuario</div>
						<a class="dropdown-item" href="#"> <i class="fas fa-user"></i>&nbsp;
							Perfil de usuario
						</a> <a class="dropdown-item" href="#"> <i class="fas fa-file-alt"></i>&nbsp;
							Reglamento del condominio
						</a> <a class="dropdown-item" href="#"> <i
							class="fas fa-file-invoice"></i>&nbsp; Términos y condiciones
						</a> <a class="dropdown-item" href="#"> <i class="fas fa-cogs"></i>&nbsp;
							Configuración de inmueble
						</a> <a class="dropdown-item" href="#"> <i class="fas fa-home"></i>&nbsp;
							Mis condominios
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Salir</a>
					</div></li>
			</ul>
		</div>
	</div>

	<div
		class="navbar navbar-expand-lg navbar-light bg-light barra-nav d-flex justify-content-center">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<h3>Finanzas</h3>
			</li>
		</ul>
	</div>
	</nav>
	<div class="body-container">
		<div class="rectangulo1">
			<div class="form-container">
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
								<div class="contenedor-carousel" alt="First slide">
									<div class="renglon1">CUENTA 1</div>
									<div class="renglon2">**** 3896</div>
									<div class="renglon3">$95,700 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-1"></div>
											<div class="ingresos-mes col-sm-4">
												Ingresos del mes <br>
												<div class="cantidad-ingresos">$89,000.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-4">
												Egresos del mes <br>
												<div class="cantidad-egresos">$14,000.00</div>
											</div>
											<div class="col-sm-1"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="contenedor-carousel" alt="Second slide">
									<div class="renglon1">SALDO TOTAL</div>
									<div class="renglon2">Fecha de corte: 30-junio-2018</div>
									<div class="renglon3">$100,700 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-1"></div>
											<div class="ingresos-mes col-sm-4">
												Ingresos del mes <br>
												<div class="cantidad-ingresos">$89,000.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-4">
												Egresos del mes <br>
												<div class="cantidad-egresos">$14,000.00</div>
											</div>
											<div class="col-sm-1"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="contenedor-carousel" alt="Third slide">
									<div class="renglon1">CAJA CHICA</div>
									<div class="renglon2">****</div>
									<div class="renglon3">$15,000 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-1"></div>
											<div class="ingresos-mes col-sm-4">
												Ingresos del mes <br>
												<div class="cantidad-ingresos">$89,000.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-4">
												Egresos del mes <br>
												<div class="cantidad-egresos">$14,000.00</div>
											</div>
											<div class="col-sm-1"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span aria-hidden="true"><i
								class="fas fa-arrow-circle-left"
								style="color: grey; font-size: 60px""></i></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span aria-hidden="true"><i
								class="fas fa-arrow-circle-right"
								style="color: grey; font-size: 60px;""></i></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
					<div class="row">
						<div class="col-sm-2"></div>
						<button type="button" class="boton1 registrar-ingreso col-sm-3"
							data-toggle="modal" data-target="#exampleModalCenter1">registrar
							ingreso</button>
						<div class="modal fade" id="exampleModalCenter1" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close close-button"
											data-dismiss="modal" aria-label="Close">
											<h2>
												<i class="fas fa-times-circle"></i>
											</h2>
										</button>
									</div>
									<div class="modal-body">

										<form>
											<div class="form-group">
												<label for="cuenta" class="bmd-label-floating">cuenta
													de retiro</label> <select class="form-control" id="cuenta">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group bmd-form-group">
												<label for="concepto" class="bmd-label-floating">concepto</label>
												<input type="text" class="form-control" id="concepto">
											</div>
											<div class="form-group">
												<label for="cuenta" class="bmd-label-floating">remitente</label>
												<select class="form-control" id="cuenta">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<label for="fecha" class="bmd-label-floating">fecha</label>
												<input id="fecha" class="form-control" name="fecha" />
												<script>
													$('#fecha')
															.datepicker(
																	{
																		uiLibrary : 'bootstrap4'
																	});
												</script>
											</div>
											<div class="form-group bmd-form-group">
												<label for="cantidad" class="bmd-label-floating">cantidad</label>
												<input type="text" class="form-control" id="cantidad">
											</div>
											<div class="form-group bmd-form-group">
												<button type="button" class="btn btn-block btn-archivo">
													Adjuntar archivo (maximo 2MB)&nbsp;<i
														class="fas fa-paperclip rotate45"></i>
												</button>
												<input type="file" style="display: none"
													class="form-control" id="archivo">
											</div>
										</form>
									</div>
									<div class="modal-footer d-flex justify-content-center">
										<button type="button" class="btn btn-primary">registrar
											ingreso</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-2"></div>
						<button type="button" class="boton2 registrar-egreso col-sm-3"
							data-toggle="modal" data-target="#exampleModalCenter2">registrar
							egreso</button>
						<div class="modal fade" id="exampleModalCenter2" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalCenterTitle"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close close-button"
											data-dismiss="modal" aria-label="Close">
											<h2>
												<i class="fas fa-times-circle"></i>
											</h2>
										</button>
									</div>
									<div class="modal-body">

										<form>
											<div class="form-group">
												<label for="cuenta" class="bmd-label-floating">cuenta
													de retiro</label> <select class="form-control" id="cuenta">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group bmd-form-group">
												<label for="concepto" class="bmd-label-floating">concepto</label>
												<input type="text" class="form-control" id="concepto">
											</div>
											<div class="form-group bmd-form-group">
												<label for="remitente" class="bmd-label-floating">remitente</label>
												<input type="text" class="form-control" id="remitente">
											</div>
											<div class="form-group">
												<label for="cuenta" class="bmd-label-floating">remitente</label>
												<select class="form-control" id="cuenta">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<label for="fecha" class="bmd-label-floating">fecha</label>
												<input id="fecha" class="form-control" name="fecha" />
												<script>
													$('#fecha')
															.datepicker(
																	{
																		uiLibrary : 'bootstrap4'
																	});
												</script>
											</div>
											<div class="form-group bmd-form-group">
												<label for="cantidad" class="bmd-label-floating">cantidad</label>
												<input type="text" class="form-control" id="cantidad">
											</div>
											<div class="form-group bmd-form-group">
												<button type="button" id="botonarchivo" onclick="clickArchivo(event)" class="btn btn-block btn-archivo">
													Adjuntar archivo (maximo 2MB)&nbsp;<i
														class="fas fa-paperclip rotate45"></i>
												</button>
												<button type="button" id="boton-borrar" onclick="borrarArchivo(event)" class="btn btn-block btn-archivo hidden">
													<span id="file-name"></span>&nbsp;<i class="fas fa-trash-alt"></i>
												</button>
												<input type="file" style="display: none"
													class="form-control" id="archivo">
											</div>
										</form>

									</div>
									<div class="modal-footer d-flex justify-content-center">
										<button type="button" class="btn btn-primary">registrar
											egreso</button>
									</div>
								</div>
							</div>
						</div>
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
			<div id="todos" class="tabcontent active">
				<table class="table table-striped" style="width: 100%">
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
				<table class="table table-striped" style="width: 100%">
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
				<table class="table table-striped" style="width: 100%">
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
	<script type="text/javascript" src="${ctx}/resources/js/principal.js"></script>
</body>
</html>