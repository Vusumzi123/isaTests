function changeTab(evt, tab) {
			var activeTabs = $('.active');
			activeTabs.each(function() {
				$(this).removeClass('active');
			})
			var toActivete = $('#' + tab);
			toActivete.addClass('active');
		}


function cargaDatos(elem){
	var url = contexto + "/services/auth/datosAgendavecinos?nombre="+elem.textContent ;
	var tableBody = $("#tabla");
	var nombreRes = $("#nombreRes");
	
	$.ajax({
		url: url,
		success: function (response, status){
			var respuesta = response;
			var rows = respuesta.adeudos;
			nombreRes.text(respuesta.vecino);
			tableBody.html("");
			rows.forEach(function(row){
				var row = generaFila( row.fecha, row.concepto, row.cantidad );
				tableBody.append(row);
			})
			
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
