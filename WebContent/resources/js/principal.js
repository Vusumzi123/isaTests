function changeTab(evt, tab) {
			var activeTabs = $('.active');
			activeTabs.each(function() {
				$(this).removeClass('active');
			})
			var toActivete = $('#' + tab);
			toActivete.addClass('active');
		}


var elementArchivo = $("#archivo");
var botonBorrar = $("#boton-borrar");
var botonArchivo = $("#botonarchivo");
function clickArchivo(event) {
	event.preventDefault();
	elementArchivo.click();
	}

elementArchivo.change(function(){
	
	toggleButtons();
	botonBorrar.css("display", "none")
	botonArchivo.html(nombreArch+'&nbsp;<i class="fas fa-trash-alt"></i>');
	botonArchivo.click(function(){
		elementArchivo.val("")
	})
})

