var agregarButton = $("#agregarcuenta1");
// agregarButton.click(agregarCuadro);
var contador = 1
function agregarCuadro1(e) {
	e.preventDefault();
	var contenedor = $("#cuadro-contenedor1");
	var url = contexto + "/services/admin/cuadroconfig?num=" + contador;
	$.ajax({
		url : url,
		method : 'GET',
		success : function(response, status) {
			console.log(response);
			contenedor.append(response);
			$("#contador").val(contador);
			$('body').bootstrapMaterialDesign()
		},
		error : function(error) {
			console.log(error);
		}
	})
	contador++;
}

function loadConfigInmueble(){
	sendToken();
	var ajaxObj = {
			url: contexto+"/services/admin/configinmueble",
			method: 'GET',
			success: function(response, status){
				$("#contenedorPrincipal").html(response);
				var e = new Event("click");
				agregarCuadro1(e);
			},
	}
	contentAjax(ajaxObj, "contenedorPrincipal");
}

function addArchive(){
	var inputFile = $('#regulation');
	var adjButton = $("#adj");
	var delButton = $("#del");
	var nobreArch = $("#nombre-arch");
	var callback = function(base64String){
		$('#filebase64-config').val(base64String);
	}
	inputFile.click();
	inputFile.change(function(){
		var nameTxt = inputFile[0].files[0].name;
		nobreArch.text(nameTxt);
		getBase64(inputFile[0].files[0], callback);
	})
	adjButton.addClass('hidden');
	delButton.removeClass('hidden');
}

function addPhotoc(){
	var inputPhoto = $('#file-photo-config');
	var addPhotoButton = $('#photo-button-config');
	var inputBase64 = $('#photobase64-config');
	var callback = function (base64String){
		$('#photobase64-config').val(base64String);
		$('#photo-circle-config').css('background-image','url('+base64String+')');
	}
	inputPhoto.click();
	inputPhoto.change(function(){
		getBase64(inputPhoto[0].files[0],callback);
	})
}

function removeArchive(){
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
    reader.onload = function () {
      console.log(reader.result);
      
      callback(reader.result);
      
    };
    reader.onerror = function (error) {
      console.log('Error: ', error);
    };
 }


