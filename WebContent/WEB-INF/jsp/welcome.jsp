<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>

<script defer
	src="https://use.fontawesome.com/releases/v5.1.0/js/all.js"
	integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9"
	crossorigin="anonymous"></script>
	
<style>
body {
	background-color: brown;
}

.cuadro {
	background-color: red;
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.circulo {
	background-color: green;
	width: 300px;
	height: 300px;
	border-radius: 50%;
}

.transparent {
	background-color: transparent;
}
</style>
</head>
<body>

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="cuadro">HelloWorld</div>
			</div>
			<div class="carousel-item">
				<div class="cuadro transparent">
					<div class="circulo"></div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="cuadro">HelloWorld</div>
			</div>
			<div class="carousel-item">
				<select class="form-control" id="exampleFormControlSelect1">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
			<div class="carousel-item">
				<div class="cuadro">
					<div class="input-field col s12">
						<select>
							<option value="1">Option 1</option>
							<option value="2">Option 2</option>
							<option value="3">Option 3</option>
						</select> <label>Materialize Select</label>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="cuadro">HelloWorld</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <i
			class="fas fa-arrow-alt-circle-left"></i>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <i
			class="fas fa-arrow-alt-circle-right"></i>
		</a>
	</div>

</body>
</html>