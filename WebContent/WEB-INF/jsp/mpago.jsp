<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "ctx" value = "${pageContext.request.contextPath}"/>
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


<link rel="stylesheet"
	href="${ctx}/resources/mpago.css">
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
						onclick="changeTab(event, 'tarjeta-crdito-o-dbito')">tarjeta</button>
					<button class="tablinks" onclick="changeTab(event, 'paypal')">paypal</button>
				</div>
				<div id="tarjeta-crdito-o-dbito" class="tabcontent active">
					<form>
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

										<span class="form-group bmd-form-group col-sm-4">
											<label> vigencia </label>
										</span>

										<div class="container">
											<div class="row form-inline">
												<span
													class="form-group bmd-form-group col-sm-4 inline-label"
													style="width: 20%"> <!-- needed to match padding for floating labels -->
													<label> mes </label>
												</span>
												<div class="col-sm-4 form-group inline-select"
													style="width: 30%">
													<select class="form-control" style="width: 100%" id="expires" name="expires">
														<option value="1">enero</option>
														<option value="2">febrero</option>
														<option value="3">marzo</option>
														<option value="4">abril</option>
														<option value="5">mayo</option>
														<option value="6">junio</option>
														<option value="7">julio</option>
														<option value="8">agosto</option>
														<option value="9">septiembre</option>
														<option value="10">octubre</option>
														<option value="11">noviembre</option>
														<option value="12">diciembre</option>
													</select>
												</div>
												<span
													class="form-group bmd-form-group col-sm-4 inline-label"
													style="width: 25%"> <!-- needed to match padding for floating labels -->
													<label> año </label>
												</span>
												<div class="form-group col-sm-4 inline-select"
													style="width: 25%">
													<select class="form-control" id="year" name="year">
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
							<label> <input type="checkbox" name="terms" id="terms" required>
								Acepto términos y condiciones
							</label>
						</div>
						<button class="Pagar Rectangle-242">Pagar</button>
					</form>
				</div>
				<div id="paypal" class="tabcontent">
					<form>
						<div class="contenido1">
							<div class="paypal-container">
								<img class="imgpaypal"
									src="${pageContext.request.contextPath}/resources/img/logoPaypal.svg">
							</div>
							<div class="iniciacuenta">Inicie sesión en su cuenta para
								poder pagar</div>
							<div class="form-group">
								<label for="email" class="bmd-label-floating">Correo electrónico</label> <input type="email" class="form-control"
									id="email" name="email">
							</div>
							<div class="form-group">
								<label for="password" class="bmd-label-floating">Contraseña</label> <input type="password" class="form-control"
									id="password" name="password">
							</div>
							<button class="Pagar Rectangle-232">Pagar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/mpago.js" ></script>

</body>
</html>