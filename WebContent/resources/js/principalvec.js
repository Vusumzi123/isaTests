$(document).ready(function(){ loadContent('finanzasvec') })

function changeTab(evt, tab, clase) {
	var activeTabs = $('.'+clase);
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}

function loadContent(name){
	sendToken();
	var ajaxObj = {
			url: contexto+"/services/neig/"+name,
			method: 'GET',
	}
	contentAjax(ajaxObj, "contenedorPrincipal");
}
