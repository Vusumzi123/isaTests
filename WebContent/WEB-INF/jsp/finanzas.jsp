<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="body-container">
	<div class="rectangulo1">
		<div class="textoarriba">
			<h3>Finanzas</h3>
		</div>
		<div class="form-container">
			<div class="container">
				<c:if test="${isAdmin}">
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
									<div class="renglon1">SALDO TOTAL</div>
									<div class="renglon2">Fecha de corte: 30-junio-2018</div>
									<div class="renglon3">$72400 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-1"></div>
											<div class="ingresos-mes col-sm-4">
												Ingresos del mes <br>
												<div class="cantidad-ingresos">$80500.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-4">
												Egresos del mes <br>
												<div class="cantidad-egresos">$8100.00</div>
											</div>
											<div class="col-sm-1"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="contenedor-carousel" alt="Second slide">
									<div class="renglon1"></div>
									<div class="renglon2">**** 3896</div>
									<div class="renglon3">$64000 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-1"></div>
											<div class="ingresos-mes col-sm-4">
												Ingresos del mes <br>
												<div class="cantidad-ingresos">$80500.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-4">
												Egresos del mes <br>
												<div class="cantidad-egresos">$8100.00</div>
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
									<div class="renglon3">$8400 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-1"></div>
											<div class="ingresos-mes col-sm-4">
												Ingresos del mes <br>
												<div class="cantidad-ingresos">$80500.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-4">
												Egresos del mes <br>
												<div class="cantidad-egresos">$8100.00</div>
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
								style="color: grey; font-size: 60px"></i></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span aria-hidden="true"><i
								class="fas fa-arrow-circle-right"
								style="color: grey; font-size: 60px;"></i></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</c:if>
				<c:if test="${!isAdmin}">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="contenedor-carousel" alt="First slide">
									<div class="renglon1">FINANZAS DEL CONDOMINIO</div>
									<div class="renglon2">Fecha de corte: 31 Mayo 2018</div>
									<div class="renglon3">$72400 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-1"></div>
											<div class="ingresos-mes col-sm-4">
												Ingresos del mes <br>
												<div class="cantidad-ingresos">$80500.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-4">
												Egresos del mes <br>
												<div class="cantidad-egresos">$8100.00</div>
											</div>
											<div class="col-sm-1"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="contenedor-carousel" alt="Second slide">
									<div class="renglon1">TOTAL PAGAR</div>
									<div class="renglon2">Pagar antes de: 31 Mayo 2018</div>
									<div class="renglon3">$7900 MXN</div>
									<div class="container1">
										<div class="row">
											<div class="col-sm-1"></div>
											<div class="ingresos-mes col-sm-4">
												Saldo <br>
												<div class="cantidad-ingresos">$100.00</div>
											</div>
											<div class="linea-vertical col-sm-2"></div>
											<div class="egresos-mes col-sm-4">
												Cargo del mes <br>
												<div class="cantidad-egresos">$8000.00</div>
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
								style="color: grey; font-size: 60px"></i></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span aria-hidden="true"><i
								class="fas fa-arrow-circle-right"
								style="color: grey; font-size: 60px;"></i></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</c:if>
				<c:if test="${isAdmin}">
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

										<form id="ingreso-form">
											<div class="form-group modal-form-group">
												<label for="cuenta" class="bmd-label-floating">cuenta
													de retiro</label> <select class="form-control"
													name="cuenta-ingreso" id="cuenta-ingreso"
													style="cursor: pointer;">
													<c:forEach var="finanza" items="${finanzas}">
														<option>${finanza.getAlias()}</option>
													</c:forEach>
												</select>
											</div>
											<div class="form-group modal-form-group">
												<label for="concepto">concepto</label> <input type="text"
													class="form-control" id="concepto-ingreso"
													name="concepto-ingreso">
											</div>
											<div class="form-group modal-form-group">
												<label for="cuenta" class="bmd-label-floating">remitente</label>
												<select class="form-control" id="remitente-ingreso"
													name="remitente-ingreso" style="cursor: pointer;">
													<c:forEach var="vecino" items="${vecinos}">
														<option>${vecino.getNumberv()}</option>
													</c:forEach>
												</select>
											</div>
											<div class="form-group modal-form-group">
												<label for="fecha-ingreso" class="bmd-label-floating">fecha</label>
												<input id="fecha-ingreso" class="form-control"
													name="fecha-ingreso" placeholder="mm/dd/aaaa" />
												<script>
													$('#fecha-ingreso')
															.datepicker(
																	{
																		uiLibrary : 'bootstrap4'
																	});
												</script>
											</div>
											<div class="form-group modal-form-group">
												<label for="cantidad">cantidad</label>
												<div class="input-group mb-2">
													<div class="input-group-prepend">
														<div class="input-group-text">$</div>
													</div>
													<input type="text" class="form-control"
														id="cantidad-ingreso" name="cantidad-ingreso">
												</div>
											</div>
											<div class="form-group bmd-form-group">
												<button type="button" id="adj-ingreso"
													onclick="addArchive('ingreso')"
													class="btn btn-block d-flex justify-content-between btn-archivo">
													Adjuntar archivo (maximo 2MB)&nbsp;<i
														class="fas fa-paperclip rotate45"></i>
												</button>
												<button type="button" id="del-ingreso"
													onclick="removeArchive('ingreso')"
													class="btn btn-block d-flex justify-content-between btn-archivo hidden">
													<span id="nombre-arch-ingreso"></span>&nbsp;<i
														class="fas fa-trash-alt"></i>
												</button>
												<input type="file" style="display: none"
													class="form-control" id="comprobante-ingreso"
													name="comprobante-ingreso">
											</div>
										</form>
									</div>
									<div class="modal-footer d-flex justify-content-center">
										<button type="button" onclick="agregaIngreso()"
											id="boton-enviar-ingreso" class="btn btn-primary">registrar
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

										<form id="egreso-form" name="egreso-form">
											<div class="form-group modal-form-group">
												<label for="cuenta-egreso" class="bmd-label-floating">cuenta
													de retiro</label> <select class="form-control" id="cuenta-egreso"
													style="cursor: pointer;">
													<c:forEach var="finanza" items="${finanzas}">
														<option>${finanza.getAlias()}</option>
													</c:forEach>
												</select>
											</div>
											<div class="form-group modal-form-group">
												<label for="concepto-egreso">concepto</label> <input
													type="text" class="form-control" id="concepto-egreso">
											</div>
											<div class="form-group modal-form-group">
												<label for="remitente-egreso" class="bmd-label-floating">remitente</label>
												<select class="form-control" id="remitente-egreso"
													style="cursor: pointer;">
													<c:forEach var="vecino" items="${vecinos}">
														<option>${vecino.getNumberv()}</option>
													</c:forEach>
												</select>
											</div>
											<div class="form-group modal-form-group">
												<label for="fecha-egreso" class="bmd-label-floating">fecha</label>
												<input id="fecha-egreso" class="form-control"
													name="fecha-egreso" placeholder="mm/dd/aaaa" />
												<script>
													$('#fecha-egreso')
															.datepicker(
																	{
																		uiLibrary : 'bootstrap4'
																	});
												</script>
											</div>
											<div class="form-group modal-form-group">
												<label for="cantidad">cantidad</label>
												<div class="input-group mb-2">
													<div class="input-group-prepend">
														<div class="input-group-text">$</div>
													</div>
													<input type="text" class="form-control"
														id="cantidad-egreso" name="cantidad-egreso">
												</div>
											</div>
											<div class="form-group bmd-form-group">
												<button type="button" id="adj-egreso"
													onclick="addArchive('egreso')"
													class="btn btn-block d-flex justify-content-between btn-archivo">
													Adjuntar archivo (maximo 2MB)&nbsp;<i
														class="fas fa-paperclip rotate45"></i>
												</button>
												<button type="button" id="del-egreso"
													onclick="removeArchive('egreso')"
													class="btn btn-block d-flex justify-content-between btn-archivo hidden">
													<span id="nombre-arch-egreso"></span>&nbsp;<i
														class="fas fa-trash-alt"></i>
												</button>
												<input type="file" style="display: none"
													class="form-control" id="archivo-egreso"
													name="archivo-egreso">
											</div>
										</form>
									</div>
									<div class="modal-footer d-flex justify-content-center">
										<button type="button" id="agregaIngreso"
											class="btn btn-primary">registrar egreso</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-2"></div>
					</div>
				</c:if>
				<c:if test="${!isAdmin}">
					<div
						style="display: flex; align-items: center; justify-content: center;">
						<button type="button" class="boton1 registrar-ingreso col-sm-3"
							data-toggle="modal" data-target="#exampleModalCenter1">capturar
							comprobante</button>
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
									<div class="modal-body" style="margin-bottom: -50px;">
										<form id="vecino-form">
											<div class="contenedorimg">
												<div class="img-container" id="photo-circle-finanzasvec"
													style="background-image: url('${pageContext.request.contextPath}/resources/img/iconoPhoto.svg')">
													<button type="button" class="cam"
														id="photo-button-finanzasvec" onclick="addPhotofv()">
														<i class="fas fa-camera"></i>
														<!-- <i class="fas fa-camera"></i> -->
													</button>
												</div>
												<input type="hidden" name="photobase64-finanzasvec"
													id="photobase64-finanzasvec"> <input type="file"
													class="hidden" name="file-photo-finanzasvec"
													id="file-photo-finanzasvec">
											</div>
											<div class="form-group modal-form-group">
												<label for="vecino-comprobante" class="bmd-label-floating">vecino
												</label> <select class="form-control" name="vecino-comprobante"
													id="vecino-comprobante" style="cursor: pointer;">
													<c:forEach var="vecino" items="${vecinos}">
														<option>${vecino.getNumberv()}</option>
													</c:forEach>
												</select>
											</div>
											<div class="form-group modal-form-group">
												<label for="concepto-comprobante">concepto</label> <input
													type="text" class="form-control" id="concepto-comprobante"
													name="concepto-comprobante">
											</div>
											<div class="form-group modal-form-group">
												<label for="fecha-comprobante" class="bmd-label-floating">fecha</label>
												<input id="fecha-comprobante" class="form-control"
													name="fecha-comprobante" placeholder="mm/dd/aaaa" />
												<script>
													$('#fecha-ingreso')
															.datepicker(
																	{
																		uiLibrary : 'bootstrap4'
																	});
												</script>
											</div>
											<div class="form-group modal-form-group">
												<label for="monto-comprobante">monto</label>
												<div class="input-group mb-2">
													<div class="input-group-prepend">
														<div class="input-group-text">$</div>
													</div>
													<input type="text" class="form-control"
														id="monto-comprobante" name="monto-comprobante">
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer d-flex justify-content-center">
										<button type="button" onclick="agregarDato(tipoIngreso)"
											id="boton-enviar-comprobante" class="btn btn-primary">enviar
											recibo</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
	<div class="form-container">
		<input type="text" id="myInput" onkeyup="myFunctionTable(this)"
			placeholder="Busca por fecha..." title="Type in a date"
			style="margin-top: 10px; margin-bottom: 10px;">
		<div class="tab">
			<button class="tablinks " onclick="changeFinanzas(event , 'todos')">todos</button>
			<button class="tablinks "
				onclick="changeFinanzas(event , 'ingresos')">ingresos</button>
			<button class="tablinks " onclick="changeFinanzas(event , 'egresos')">egresos</button>
		</div>
		<!-- 		<div id="contenedor-cuadroie"></div> -->
		<div id="todos" class="tabcontent active">
			<table class="table table-striped" id="myTable" style="width: 100%">
				<thead>
					<tr>
						<th>Fecha</th>
						<th>Concepto</th>
						<th>Cantidad</th>
						<th>Comprobante</th>
					</tr>
				</thead>
				<tbody>
					<tr id="contenedoringresos">
					</tr>
					<tr id="contenedoregresos">
					</tr>
					<c:forEach var="ingreso" items="${ingresos}">
						<tr>
							<td>${ingreso.getFecha()}</td>
							<td>${ingreso.getConcepto()}</td>
							<td style="color: #029c4a;">${ingreso.getCantidad()}</td>
							<td>${ingreso.getComprobante()}</td>
						</tr>
					</c:forEach>
					<c:forEach var="egreso" items="${egresos}">
						<tr>
							<td>${egreso.getFecha()}</td>
							<td>${egreso.getConcepto()}</td>
							<td style="color: #ed0723;">${egreso.getCantidad()}</td>
							<td>${egreso.getComprobante()}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div id="ingresos" class="tabcontent">
			<table class="table table-striped" id="myTable" style="width: 100%">
				<thead>
					<tr>
						<th>Fecha</th>
						<th>Concepto</th>
						<th>Cantidad</th>
						<th>Comprobante</th>
					</tr>
				</thead>
				<tbody>
					<tr id="contenedoringresos">
					</tr>
					<c:forEach var="ingreso" items="${ingresos}">
						<tr>
							<td>${ingreso.getFecha()}</td>
							<td>${ingreso.getConcepto()}</td>
							<td style="color: #029c4a;">${ingreso.getCantidad()}</td>
							<td>${ingreso.getComprobante()}</td>
						<tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div id="egresos" class="tabcontent">
			<table class="table table-striped" id="myTable" style="width: 100%">
				<thead>
					<tr>
						<th>Fecha</th>
						<th>Concepto</th>
						<th>Cantidad</th>
						<th>Comprobante</th>
					</tr>
				</thead>
				<tbody>
					<tr id="contenedoregresos">
					</tr>
					<c:forEach var="egreso" items="${egresos}">
						<tr>
							<td>${egreso.getFecha()}</td>
							<td>${egreso.getConcepto()}</td>
							<td style="color: #ed0723;">${egreso.getCantidad()}</td>
							<td>${egreso.getComprobante()}</td>
						<tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>