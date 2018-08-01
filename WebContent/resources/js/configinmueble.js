var agregarButton = $("#agregarcuenta1");
// agregarButton.click(agregarCuadro);
var contador = 1
var contenedor = $("#cuadro-contenedor1");
function agregarCuadro1(e, num) {
	numeroCuadro = num;
	e.preventDefault();
	var url = contexto + "/services/auth/cuadroconfig?num=" + numeroCuadro;
	$.ajax({
		url : url,
		method : 'GET',
		success : function(response, status) {
			contenedor.append(response);
			$("#contador").val(numeroCuadro);
			$('body').bootstrapMaterialDesign()
		},
		error : function(error) {
			console.log(error);
		}
	})
	numeroCuadro++;
}
$("body").ready(function() {
	var e = new Event("click");
	agregarCuadro1(e, 1);
});

function addArchive(){
	var inputFile = $('#archivo');
	var adjButton = $("#adj");
	var delButton = $("#del");
	var nobreArch = $("#nombre-arch");
	inputFile.click();
	inputFile.change(function(){
		var nameTxt = inputFile[0].files[0].name;
		nobreArch.text(nameTxt);
	})
	adjButton.addClass('hidden');
	delButton.removeClass('hidden');
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