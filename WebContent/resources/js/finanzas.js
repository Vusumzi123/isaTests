function agregaDato(tipo) {
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

function agregaIngreso(){
	var ajaxObject = {
			url : contexto + "/services/auth/agregaring",
			method : 'POST',
			data : { fechaIngreso : $("#fecha-ingreso").val(), 
				conceptoIngreso : $("#concepto-ingreso").val(),
				cantidadIngreso : $("#cantidad-ingreso").val(),
				comprobanteIngreso : $("#comprobante-ingreso").val()},
			success : function(response, status) {
				$("#contenedoringresos").prepend(response);
				
			},
	}
	sendToken();
	contentAjax(ajaxObject, "contenedoringresos");
};

function changeDatos(event, tab) {
	var activeTabs = $('.datos');
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}

function changeFinanzas(event, tab) {

	var activeTabs = $('.active');
	activeTabs.each(function() {
		$(this).removeClass('active');

	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
	myFunctionTable(document.getElementById("myInput"));
}

// function llamarTabla(tipo){
// var ajaxObj = {
// url : contexto + "/services/auth/cuadroie?tipo=" + tipo,
// method : 'GET',
// success: function (response, status) {
// console.log(response);
// }
//			
// }
// contentAjax(ajaxObj, "contenedor-cuadroie");
// }

function addArchive(transaction) {
	var inputFile = $('#archivo-' + transaction);
	var adjButton = $("#adj-" + transaction);
	var delButton = $("#del-" + transaction);
	var nobreArch = $("#nombre-arch-" + transaction);
	inputFile.click();
	inputFile.change(function() {
		var nameTxt = inputFile[0].files[0].name;
		nobreArch.text(nameTxt);
	})
	adjButton.addClass('hidden');
	delButton.removeClass('hidden');
}

function removeArchive(transaction) {
	var inputFile = $('#archivo-' + transaction);
	var adjButton = $("#adj-" + transaction);
	var delButton = $("#del-" + transaction);
	var nobreArch = $("#nombre-arch-" + transaction);
	inputFile.val(null);
	nobreArch.text('');
	adjButton.removeClass('hidden');
	delButton.addClass('hidden');
}

function addPhotofv() {
	var inputPhoto = $('#file-photo-finanzasvec');
	var addPhotoButton = $('#photo-button-finanzasvec');
	var inputBase64 = $('#photobase64-finanzasvec');
	var callback = function(base64String) {
		$('#photobase64-finanzasvec').val(base64String);
		$('#photo-circle-finanzasvec').css('background-image',
				'url(' + base64String + ')');
	}
	inputPhoto.click();
	inputPhoto.change(function() {
		getBase64(inputPhoto[0].files[0], callback);
	})
}

function getBase64(photo, callback) {
	console.log(photo);
	var reader = new FileReader();
	reader.readAsDataURL(photo);
	reader.onload = function() {
		console.log(reader.result);

		callback(reader.result);

	};
	reader.onerror = function(error) {
		console.log('Error: ', error);
	};
}

function myFunctionTable(elem) {
	var input, filter, table, tr, td, i;
	var activeTab = $('.tabcontent.active');
	$('tr').css('display', "");
	// input = document.getElementById("myInput");
	filter = elem.value.toUpperCase();
	table = activeTab.children('table')[0];
	tr = table.getElementsByTagName("tr");
	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[0];
		if (td) {
			if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}
