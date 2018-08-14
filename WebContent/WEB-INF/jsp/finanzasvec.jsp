<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="body-container">
	<div class="rectangulo1">
		<div class="textoarriba">
			<h3>Finanzas</h3>
		</div>
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
							style="color: grey; font-size: 60px"></i></span> <span class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span aria-hidden="true"><i
							class="fas fa-arrow-circle-right"
							style="color: grey; font-size: 60px;"></i></span> <span class="sr-only">Next</span>
					</a>
				</div>
				<div style="display: flex; align-items: center; justify-content: center;">
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
											<div class="img-container" id="photo-circle"
												style="background-image: url('${pageContext.request.contextPath}/resources/img/imagenResidencia.svg')">
												<button type="button" class="cam" id="photo-button"
													onclick="addPhoto()">
													<i class="fas fa-camera"></i>
													<!-- <i class="fas fa-camera"></i> -->
												</button>
											</div>
											<input type="hidden" name="photobase64" id="photobase64">
											<input type="file" class="hidden" name="file-photo"
												id="file-photo">
										</div>
										<div class="form-group modal-form-group">
											<label for="vecino-comprobante" class="bmd-label-floating">vecino
											</label> <select class="form-control" name="vecino-comprobante"
												id="vecino-comprobante">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
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
			</div>
		</div>
	</div>
</div>