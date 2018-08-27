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
	var url = contexto+"/services/neig/"+name;
	var ajaxObj = {
			url: url,
			method: 'GET',
			success: function(response, status){
				window.history.pushState(null, name, url);
				$("#contenedorPrincipal").html(response);
			}
	}
	contentAjax(ajaxObj, "contenedorPrincipal");
}