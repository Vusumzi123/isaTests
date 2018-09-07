<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="body-container">
	<div class="form-container-agenda">
		<div class="contenedor-agenda">
			<div class="textoarriba">
				<h3>Agenda de vecinos</h3>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="contenedor4-agenda">
						<form>
							<div>
								<input onkeyup="myFunction()" type="text" id="mySearch" name="q"
									placeholder="buscar vecino" size="38"
									style="margin-top: 13px; background-color: #f1f1f1">
								<button
									style="background: transparent; border: none; color: #00949e; cursor: pointer">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</form>
						<div class="d-flex flex-column tab" style="margin-top: 11px">
							<ul style="list-style: none;" id="myList">
								<c:forEach var="vecino" items="${vecinos}">
									<li>
										<button class="elemento1-agenda p-4"
											onclick="cargaDatos(event, '${vecino.getNamev()}')">
											<div class="img-elemento1-agenda"
												style="background-image: url('${vecino.getPhotov()}')"></div>
											<div>
												${vecino.getNamev()} ${vecino.getLastnamev() } <br>
												<div class="numvivienda-agenda">${vecino.getNumberv()}</div>
											</div>
										</button>
									</li>
								</c:forEach>
							</ul>

						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="form-container2-agenda">
						<div class="contenedor2-agenda">
							<div id="usuario1" class="tabcontent datos active">
								<div class="contenedor3-agenda">
									<div class="row">
										<div id="fotovecino" name="fotovecino" class="img-derecha-agenda col-sm-4"
											style="background-image: url('${vecino.getPhotov()}')"></div>
										<div class="contenedor5-agenda col-sm-4">
											<div class="nombre-agenda">
												nombre <br>
												<div class="" id="nombrevecino" name="nombrevecino">${vecino.getNamev()}
													${vecino.getLastnamev}</div>
											</div>
											<div class="vivienda-agenda">
												vivienda <br>
												<div class="" id="viviendavecino" name="viviendavecino">${vecino.getNumberv()}</div>
											</div>
										</div>
										<div class="correo-agenda col-sm-4">
											correo electrónico <br>
											<div class="" id="correovecino" name="correovecino">${vecino.getEmailv}</div>
										</div>
									</div>
								</div>
								<div class="tab">
									<button class="tablinks"
										onclick="changeTab(event, 'pagos', 'table-agenda')"
										style="width: 50% !important">pagos</button>
									<button class="tablinks"
										onclick="changeTab(event, 'adeudos', 'table-agenda')"
										style="width: 50% !important">adeudos</button>
								</div>
								<div id="pagos" name="pagos"
									class="tabcontent table-agenda active">
									<table class="table table-striped" style="width: 100%">
										<thead>
											<tr>
												<th>Fecha</th>
												<th>Concepto</th>
												<th>Cantidad</th>
												<th>Comprobante pago</th>
											</tr>
										</thead>
										<tbody id="tabla-pagos">


										</tbody>
									</table>
								</div>
								<div id="adeudos" name="adeudos" class="tabcontent table-agenda">
									<table class="table table-striped" style="width: 100%">
										<thead>
											<tr>
												<th>Fecha</th>
												<th>Concepto</th>
												<th>Cantidad</th>
												<th>Comprobante adeudo</th>
											</tr>
										</thead>
										<tbody id="tabla-adeudos">

										</tbody>
									</table>
									<div class="posicionboton">
										<button type="button" class="cargo-extra" data-toggle="modal"
											data-target="#exampleModalCenter1">cargo
											extraordinario</button>
										<div class="modal fade" id="exampleModalCenter1" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalCenterTitle"
											aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered"
												role="document">
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
																<label for="concepto">concepto</label> <input
																	type="text" class="form-control" id="concepto-ingreso"
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
																	$(
																			'#fecha-ingreso')
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
														</form>
													</div>
													<div class="modal-footer d-flex justify-content-center">
														<button type="button" onclick="agregaDato(tipoIngreso)"
															id="boton-enviar-cargo" class="btn btn-primary">registrar
															cargo</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>