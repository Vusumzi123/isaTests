function changeTab(evt, tab) {
	var activeTabs = $('.active');
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}

var agregarButton = $("#agregarcuenta");
// agregarButton.click(agregarCuadro);
var contador = 1
var contenedor = $("#cuadro-contenedor");
function agregarCuadro(e, num) {
	numeroCuadro = num;
	e.preventDefault();
	var url = contexto + "/services/admin/cuadrofinanzas?num=" + numeroCuadro;
	$.ajax({
		url : url,
		method : 'GET',
		success : function(response, status) {
			contenedor.append(response);
			$("#contador").val(numeroCuadro);
			$('body').bootstrapMaterialDesign();
			numeroCuadro++;
		},
		error : function(error) {
			console.log(error);
		}
	})
	
}
$("body").ready(function() {
	var e = new Event("click");
	agregarCuadro(e, 1);
});

function addArchive(){
	var inputFile = $('#regulation');
	var adjButton = $("#adj");
	var delButton = $("#del");
	var nobreArch = $("#nombre-arch");
	var callback = function(base64String){
		$('#filebase64').val(base64String);
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

function addPhoto(){
	var inputPhoto = $('#file-photo');
	var addPhotoButton = $('#photo-button');
	var inputBase64 = $('#photobase64');
	var callback = function (base64String){
		$('#photobase64').val(base64String);
		$('#photo-circle').css('background-image','url('+base64String+')');
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


