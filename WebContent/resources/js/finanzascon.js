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
	var url = contexto + "/services/auth/cuadrofinanzas?num=" + numeroCuadro;
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
	agregarCuadro(e, 1);
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