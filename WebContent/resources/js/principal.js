$(document).ready(function(){ loadContent('finanzas') })

function changeTab(evt, tab, clase) {
	var activeTabs = $('.'+clase);
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}



function changeDatos(evt, tab) {
	var activeTabs = $('.datos');
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}

function loadContent(name){
	sendToken();
	var ajaxObj = {
			url: contexto+"/services/auth/"+name,
			method: 'GET',
	}
	contentAjax(ajaxObj, "contenedorPrincipal");
}


/*
 * Input { transaction: string}
 * 
 * agrega un archivo al input de archivos
 * y cambia el nombre del boton de borrado,
 * esconde el boton de carga de archivo y
 * muestra el boton de borrado de archivo
 * 
 * */
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
//var agregarButton = $("#loadfinanzas");r
//var contenedor = $("#finanzas");
//function agregarFinanzas(event) {
//	e.preventDefault();
//	var url = contexto + "/services/finanzas=";
//	$.ajax({
//		url : url,
//		method : 'GET',
//		success : function(response, status) {
//			contenedor.append(response);
//			$('body').bootstrapMaterialDesign()
//		},
//		error : function(error) {
//			console.log(error);
//		}
//	});
//}
