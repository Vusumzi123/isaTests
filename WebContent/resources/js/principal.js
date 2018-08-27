$(document).ready(function() {
	loadContent('finanzas');
	
})

function changeTab(evt, tab, clase) {
	var activeTabs = $('.' + clase);
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}

function loadContent(name) {
	sendToken();
	var url = contexto + "/services/admin/" + name;
	var ajaxObj = {
		url : url,
		method : 'GET',
		success : function(response, status) {

			$('#contenedorPrincipal').html(response);
		},
		error:function(err){
			$('#contenedorPrincipal').html(err);
		}
	}
	contentAjax(ajaxObj, 'contenedorPrincipal');
}

/*
 * Input { transaction: string}
 * 
 * agrega un archivo al input de archivos y cambia el nombre del boton de
 * borrado, esconde el boton de carga de archivo y muestra el boton de borrado
 * de archivo
 * 
 */

// var agregarButton = $("#loadfinanzas");r
// var contenedor = $("#finanzas");
// function agregarFinanzas(event) {
// e.preventDefault();
// var url = contexto + "/services/finanzas=";
// $.ajax({
// url : url,
// method : 'GET',
// success : function(response, status) {
// contenedor.append(response);
// $('body').bootstrapMaterialDesign()
// },
// error : function(error) {
// console.log(error);
// }
// });
// }
function addArchive() {
	var inputFile = $('#regulation');
	var adjButton = $("#adj");
	var delButton = $("#del");
	var nobreArch = $("#nombre-arch");
	var callback = function(base64String) {
		$('#filebase64-perfil').val(base64String);
	}
	inputFile.click();
	inputFile.change(function() {
		var nameTxt = inputFile[0].files[0].name;
		nobreArch.text(nameTxt);
		getBase64(inputFile[0].files[0], callback);
	})
	adjButton.addClass('hidden');
	delButton.removeClass('hidden');
}

function addPhotop() {
	var inputPhoto = $('#file-photo-perfil');
	var addPhotoButton = $('#photo-button-perfil');
	var inputBase64 = $('#photobase64-perfil');
	var callback = function(base64String) {
		$('#photobase64-perfil').val(base64String);
		$('#photo-circle-perfil').css('background-image',
				'url(' + base64String + ')');
	}
	inputPhoto.click();
	inputPhoto.change(function() {
		getBase64(inputPhoto[0].files[0], callback);
	})
}

function removeArchive() {
	var inputFile = $('#archivo');
	var adjButton = $("#adj");
	var delButton = $("#del");
	var nobreArch = $("#nombre-arch");
	inputFile.val(null);
	nobreArch.text('');
	adjButton.removeClass('hidden');
	delButton.addClass('hidden');
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

function addPhotoc() {
	var inputPhoto = $('#file-photo-config');
	var addPhotoButton = $('#photo-button-config');
	var inputBase64 = $('#photobase64-config');
	var callback = function(base64String) {
		$('#photobase64-config').val(base64String);
		$('#photo-circle-config').css('background-image',
				'url(' + base64String + ')');
	}
	inputPhoto.click();
	inputPhoto.change(function() {
		getBase64(inputPhoto[0].files[0], callback);
	})
}

window.addEventListener('popstate', function(event) {
	console.log(event);
	sendToken();
	$.ajax({
		url: event.state.url,
		method: "GET",
		dataType: "html",
		success : function(response, status) {

			$('#contenedorPrincipal').html(response);
		},
		error:function(err){
			$('#contenedorPrincipal').html(err);
		}
	})
});