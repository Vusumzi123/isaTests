function cargaDatos(event, nombre){
	var url = contexto + "/services/admin/datosAgendavecinos?nombre="+nombre ;
	var tableAdeudos = $("#tabla-adeudos");
	var tablePagos = $("#tabla-pagos");
	var nombreRes = $("#nombreRes");
	var nombreVecino = $("#nombrevecino");
	var viviendaVecino = $("#viviendavecino");
	var correoVecino = $("#correovecino");

	$.ajax({
		url: url,
		dataType : "json",
		success: function (response, status){
			console.log(response);
			var rowsAdeudos = response.adeudos;
			var rowsPagos = response.pagos;
			nombreRes.text(response);
			tableAdeudos.html("");
			tablePagos.html("");
			rowsAdeudos.forEach(function(row){
				var row = generaFila( row.fecha, row.concepto, row.cantidad );
				tableAdeudos.append(row);
			})
			rowsPagos.forEach(function(row){
				var row = generaFila( row.fecha, row.concepto, row.cantidad );
				tablePagos.append(row);
			})
			nombreVecino.html(response.namev+" "+response.lastnamev);
			viviendaVecino.html(response.numberv);
			correoVecino.html(response.emailv);
		}
	})
}

function generaFila( fecha, concepto, cantidad ){
	var row = document.createElement("tr");
	var fechaNode = document.createElement("td");
	var conceptoNode = document.createElement("td");
	var cantidadNode = document.createElement("td");
	var detalles = document.createElement("td");
	var botonDetalle = document.createElement("button");
	botonDetalle.classList.add("boton-detalle");
	
	var fechaText = document.createTextNode(fecha);
	fechaNode.appendChild( fechaText );
	var conceptoText = document.createTextNode(concepto);
	conceptoNode.appendChild( conceptoText );
	var cantidadText = document.createTextNode(cantidad);
	cantidadNode.appendChild( cantidadText );
	var botonDetalleText = document.createTextNode("detalles");
	botonDetalle.appendChild( botonDetalleText );
	detalles.appendChild(botonDetalle);
	
	row.appendChild(fechaNode);
	row.appendChild(conceptoNode);
	row.appendChild(cantidadNode);
	row.appendChild(detalles);
	
	return row;
	
	
}
