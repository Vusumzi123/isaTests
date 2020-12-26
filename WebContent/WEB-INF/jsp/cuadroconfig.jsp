<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="rectangulo-cuadroconfig">
	<div class="container">

		<div class="row">
			<div class="cuenta-config">Cuenta ${num}</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-6">
				<label for="alias${num}" class="bmd-label-floating">Nombre
					(alias) </label> <input type="text" class="form-control" id="alias${num}"
					name="alias${num}">
			</div>

			<div class="form-group col-sm-6">
				<label for="tipo${num}" class="bmd-label-floating">Tipo
					select</label> <select class="form-control" id="tipo${num}"
					name="tipo${num}" style="margin-top: -8px">
					<option value="Debito">Débito</option>
					<option value="Crédito">Crédito</option>
					<option value="Cheques">Cheques</option>
					<option value="Caja chica">Caja chica</option>
				</select>
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-6">
				<label for="montoinicial${num}" class="bmd-label-floating">Monto
					inicial</label> <input type="text" class="form-control"
					id="montoinicial${num}" name="montoinicial${num}">
			</div>
		</div>

		<div class="row">
			<div class="datos-operaciones-config">Datos para operaciones</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-6">
				<label for="numerocuenta${num}" class="bmd-label-floating">Número
					de cuenta</label> <input type="text" class="form-control"
					id="numerocuenta${num}" name="numerocuenta${num}">
			</div>
			<div class="form-group col-sm-6">
				<label for="numerotarjeta${num}" class="bmd-label-floating">Número
					de tarjeta</label> <input type="text" class="form-control"
					id="numerotarjeta${num}" name="numerotarjeta${num}">
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-6">
				<label for="numeroclabe${num}" class="bmd-label-floating">Número
					de cuenta clabe</label> <input type="text" class="form-control"
					id="numeroclabe${num}" name="numeroclabe${num}">
			</div>
		</div>
	</div>
</div>