<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="body-container">
	<div class="form-container-agenda">
		<div class="contenedor-agenda">
			<div class="row">
				<div class="col-sm-4">
					<div class="contenedor4-agenda">
						<form>
							<div>
								<input type="search" id="mySearch" name="q"
									placeholder="buscar vecino" size="38"
									style="margin-top: 13px; background-color: #f1f1f1">
								<button
									style="background: transparent; border: none; color: #00949e; cursor: pointer">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</form>
						<div class="d-flex flex-column tab" style="margin-top: 11px">
							<button class="elemento1-agenda p-4" onclick="cargaDatos(this)">
								<img class="img-elemento1-agenda"
									src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Henry
								Zapata
							</button>
							<button class="elemento1-agenda p-4" onclick="cargaDatos(this)">
								<img class="img-elemento1-agenda"
									src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Joscelin
								Rojas
							</button>
							<button class="elemento1-agenda p-4" onclick="cargaDatos(this)">
								<img class="img-elemento1-agenda"
									src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Alexis
								Negrete
							</button>
							<button class="elemento1-agenda p-4" onclick="cargaDatos(this)">
								<img class="img-elemento1-agenda"
									src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Montserrat
								Casillas
							</button>
							<button class="elemento1-agenda p-4" onclick="cargaDatos(this)">
								<img class="img-elemento1-agenda"
									src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">Sergio
								Armando
							</button>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="form-container2-agenda">
						<div class="contenedor2-agenda">
							<div id="usuario" class="tabcontent active">
								<div class="contenedor3-agenda">
									<div class="row">
										<img class="img-derecha-agenda col-sm-4"
											src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
										<div class="contenedor5-agenda col-sm-4">
											<div class="nombre-agenda">
												nombre <br>
												<div class=""></div>
											</div>
											<div class="vivienda-agenda">
												vivienda <br>
												<div class=""></div>
											</div>
										</div>
										<div class="correo-agenda col-sm-4">
											correo electrónico <br>
											<div class=""></div>
										</div>
									</div>
								</div>
								<div class="tab">
									<button class="tablinks" onclick="changeTableTab(event, 'pagos')">pagos</button>
									<button class="tablinks" onclick="changeTableTab(event, 'adeudos')">adeudos</button>
								</div>
								<div id="pagos" class="tabcontent table-tabs active">
									<table class="table table-striped" style="width: 100%">
										<thead>
											<tr>
												<th>Fecha</th>
												<th>Concepto</th>
												<th>Cantidad</th>
												<th>Comprobante</th>
											</tr>
										</thead>
										<tbody id="tabla">


										</tbody>
									</table>
								</div>
								<div id="adeudos" class="tabcontent table-tabs">
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
												<td>28 junio 2018</td>
												<td>CUOTA MENSUAL JUNIO</td>
												<td><div class="cantidad1">$8,000</div></td>
												<td><button>detalles</button></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>