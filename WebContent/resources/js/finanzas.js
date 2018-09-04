function agregaDato(tipo){
	var datos = $("#ingreso-form").serialize();
	var ajaxObject = {
			url : contexto + "/services/auth/cuadroie?tipo=" + tipo,
			method : 'POST',
			data : datos,
			success : function(response, status) {
				$("#contenedor-cuadroie").prepend(response);
				
			},
	}
	sendToken();
	contentAjax(ajaxObject, "contenedor-cuadroie");
};

function changeDatos(evt, tab) {
	var activeTabs = $('.datos');
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}

function changeTab(evt, tab) {
	var activeTabs = $('.active');
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}


//function llamarTabla(tipo){
//	var ajaxObj = {
//			url : contexto + "/services/auth/cuadroie?tipo=" + tipo,
//			method : 'GET',
//			success: function (response, status) {
//				console.log(response);
//			}
//			
//	}
//	contentAjax(ajaxObj, "contenedor-cuadroie");
//}

function addArchive(transaction){
	var inputFile = $('#archivo-'+transaction);
	var adjButton = $("#adj-"+transaction);
	var delButton = $("#del-"+transaction);
	var nobreArch = $("#nombre-arch-"+transaction);
	inputFile.click();
	inputFile.change(function(){
		var nameTxt = inputFile[0].files[0].name;
		nobreArch.text(nameTxt);
	})
	adjButton.addClass('hidden');
	delButton.removeClass('hidden');
}

function removeArchive(transaction){
	var inputFile = $('#archivo-'+transaction);
	var adjButton = $("#adj-"+transaction);
	var delButton = $("#del-"+transaction);
	var nobreArch = $("#nombre-arch-"+transaction);
	inputFile.val(null);
	nobreArch.text('');
	adjButton.removeClass('hidden');
	delButton.addClass('hidden');
}

//function generaFila( fecha, concepto, cantidad ){
//	var row = document.createElement("tr");
//	var fechaNode = document.createElement("td");
//	var conceptoNode = document.createElement("td");
//	var cantidadNode = document.createElement("td");
//	var comprobante = document.createElement("td");
//	var botonComprobante = document.createElement("button");
//	botonComprobante.classList.add("boton-comprobante");
//	
//	var fechaText = document.createTextNode(fecha);
//	fechaNode.appendChild( fechaText );
//	var conceptoText = document.createTextNode(concepto);
//	conceptoNode.appendChild( conceptoText );
//	var cantidadText = document.createTextNode(cantidad);
//	cantidadNode.appendChild( cantidadText );
//	var botonComprobanteText = document.createTextNode("Comprobante");
//	botonComprobante.appendChild( botonComprobanteText );
//	comprobante.appendChild(botonComprobante);
//	
//	row.appendChild(fechaNode);
//	row.appendChild(conceptoNode);
//	row.appendChild(cantidadNode);
//	row.appendChild(comprobante);
//	
//	return row;		
//}

function addPhotofv(){
	var inputPhoto = $('#file-photo-finanzasvec');
	var addPhotoButton = $('#photo-button-finanzasvec');
	var inputBase64 = $('#photobase64-finanzasvec');
	var callback = function (base64String){
		$('#photobase64-finanzasvec').val(base64String);
		$('#photo-circle-finanzasvec').css('background-image','url('+base64String+')');
	}
	inputPhoto.click();
	inputPhoto.change(function(){
		getBase64(inputPhoto[0].files[0],callback);
	})
}

function getBase64(photo, callback) {
	console.log(photo);
    var reader = new FileReader();
    reader.readAsDataURL(photo);
    reader.onload = function () {
      console.log(reader.result);
      
      callback(reader.result);
      
    };
    reader.onerror = function (error) {
      console.log('Error: ', error);
    };
 }