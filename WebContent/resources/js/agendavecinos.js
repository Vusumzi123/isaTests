function cargaDatos(event, nombre){
	var url = contexto + "/services/auth/datosAgendavecinos?namev="+nombre ;
	var tableAdeudos = $("#tabla-adeudos");
	var tablePagos = $("#tabla-pagos");
	var nombreRes = $("#nombreRes");
	var fotoVecino = $("#fotovecino");
	var nombreVecino = $("#nombrevecino");
	var viviendaVecino = $("#viviendavecino");
	var correoVecino = $("#correovecino");

	$.ajax({
		url: url,
		dataType : "json",
		method : 'GET',
		success: function (response, status){
			nombreRes.text(response);
			console.log(response);
			fotoVecino.find(".imgusuario-agenda").css("background-image", "url("+response.photov+")");
			nombreVecino.html(response.namev+" "+response.lastnamev);
			viviendaVecino.html(response.numberv);
			correoVecino.html(response.emailv);
			console.log(response);
			nombreRes.html(status);
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
			console.log(response);
		},
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

function changeTab(evt, tab, clase) {
	var activeTabs = $('.' + clase);
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}

function myFunction() {
    var input, filter, ul, li, button, i;
    input = document.getElementById("mySearch");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myList");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        button = li[i].getElementsByTagName("button")[0];
        if (button.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
