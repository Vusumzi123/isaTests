function agregaDato(tipo){
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

function llamarTabla(tipo){
	var ajaxObj = {
			url : contexto + "/services/auth/cuadroie?tipo=" + tipo,
			method : 'GET',
			success: function (response, status) {
				console.log(response);
			}
			
	}
	contentAjax(ajaxObj, "contenedor-cuadroie");
}