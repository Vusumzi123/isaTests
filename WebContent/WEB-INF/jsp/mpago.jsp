<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Método de pago</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"
	integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
	integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX"
	crossorigin="anonymous">
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


<link rel="stylesheet" href="${ctx}/resources/mpago.css">
</head>
<body>
	<div class="barra-nav">
		<div class="logo-nav">
			<img class="banner-img3"
				src="${pageContext.request.contextPath}/resources/img/imagotipoHorizontal.svg">
		</div>
		<img class="imgusuario"
			src="${pageContext.request.contextPath}/resources/img/imagenPerfil.svg">
	</div>
	<div class="body-container">
		<div class="form-container">
			<div class="mtodo-de-pago">método de pago</div>
			<div class="rectangulo">
				<div class="tab">
					<button class="tablinks"
						onclick="changeTab(event, 'tarjeta-crdito-o-dbito')">tarjeta
						de crédito o débito</button>
					<button class="tablinks" onclick="changeTab(event, 'paypal')">paypal</button>
				</div>
				<div id="tarjeta-crdito-o-dbito" class="tabcontent active">
					<form class="contenidocuadro">
						<div class="container">
							<div class="row">
								<div class="col-sm-6 mx-0">
									<div class="contenido">
										<div class="visa-container">
											<img class="imgvisa"
												src="${pageContext.request.contextPath}/resources/img/logoVisa.svg">
										</div>
										<div class="form-group">
											<label for="nameholder" class="bmd-label-floating">nombre
												del titular</label> <input type="text" name="nameholder"
												class="form-control" id="nameholder">
										</div>
										<div class="container">
											<div class="row form-inline" style="margin-top: -7px;">
												<span class="form-group bmd-form-group col-sm-4"
													style="color: #07354d;"> <label> vigencia </label>
												</span>
												<div class="col-sm-3 form-group inline-select"
													style="width: 20%;">
													<select class="form-control"
														style="width: 100%; cursor:pointer;" id="expires"
														name="expires">
														<option selected disabled>mes</option>
														<option value="1">01</option>
														<option value="2">02</option>
														<option value="3">03</option>
														<option value="4">04</option>
														<option value="5">05</option>
														<option value="6">06</option>
														<option value="7">07</option>
														<option value="8">08</option>
														<option value="9">09</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
													</select>
												</div>
												<div class="form-group bmd-form-group col-sm-2">&nbsp; /</div>
												<div class="form-group col-sm-3 inline-select"
													style="width: 20%;">
													<select class="form-control" style="cursor: pointer;"
														id="year" name="year">
														<option selected disabled>año</option>
														<option value="2018">2018</option>
														<option value="2019">2019</option>
														<option value="2020">2020</option>
														<option value="2021">2021</option>
														<option value="2022">2022</option>
														<option value="2023">2023</option>
														<option value="2024">2024</option>
														<option value="2025">2025</option>
														<option value="2026">2026</option>
														<option value="2027">2027</option>
														<option value="2028">2028</option>
														<option value="2029">2029</option>
														<option value="2030">2030</option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6 mx-0">
									<div class="contenido">
										<div class="mastercard-container">
											<img class="imgmastercard"
												src="${pageContext.request.contextPath}/resources/img/logoMastercard.svg">
										</div>
										<div
											style="display: flex !important; flex-direction: row; justify-content: space-between;">
											<div
												style="width: 65%; margin: none; height: 100%; display: flex; align-items: flex-end">
												<div class="form-group">
													<label for="formGroupExampleInput"
														class="bmd-label-floating">número de tarjeta</label> <input
														type="text" class="form-control" id="card-number"
														name="card-number">
												</div>
											</div>
											<div class="tarjetafrente">
												<img
													src="${pageContext.request.contextPath}/resources/img/tarjetafrente.svg">
											</div>
										</div>
										<div
											style="display: flex !important; flex-direction: row; justify-content: space-between;">
											<div
												style="width: 65%; margin: none; height: 100%; display: flex; align-items: flex-end">
												<div class="form-group">
													<label for="cvc" class="bmd-label-floating">CVC</label> <input
														type="text" class="form-control" id="cvc" name="cvc">
												</div>
											</div>
											<div class="tarjetaatras">
												<img
													src="${pageContext.request.contextPath}/resources/img/tarjetaVuelta.svg">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" name="terms" id="terms"
								required> Acepto términos y condiciones
							</label>
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<button type="button" class="Pagar Rectangle-242"
							class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModalCenter">Pagar</button>

					</form>
				</div>
				<div id="paypal" class="tabcontent">
					<form class="contenidocuadro">
						<div class="contenido1">
							<div class="paypal-container">
								<img class="imgpaypal"
									src="${pageContext.request.contextPath}/resources/img/logoPaypal.svg">
							</div>
							<div class="iniciacuenta">Inicie sesión en su cuenta para
								poder pagar</div>
							<div class="form-group">
								<label for="email" class="bmd-label-floating">Correo
									electrónico</label> <input type="email" class="form-control" id="email"
									name="email">
							</div>
							<div class="form-group">
								<label for="password" class="bmd-label-floating">Contraseña</label>
								<input type="password" class="form-control" id="password"
									name="password">
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<button type="button" class="Pagar Rectangle-242"
								class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModalCenter">Pagar</button>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<a class="modal fade" id="exampleModalCenter"
		href="${ctx }/services/auth/finanzascon" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered"
			style="max-width: 100%" role="document">
			<div class="modal-content">
				<div class="renglon1">¡PAGO EXITOSO!</div>
				<div class="renglon2">ahora da de alta tu primer condominio.</div>
			</div>
		</div>
	</a>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/mpago.js"></script>
</body>
</html>