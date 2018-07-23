function agregaComent(){
	var ajaxObject = {
			url : contexto + "/services/auth/agregarcom",
			method : 'POST',
			data : { textCom : $("#text-com").val()},
			success : function(response, status) {
				$("#avisos-container").prepend(response);
				
			},
	}
	sendToken();
	contentAjax(ajaxObject, "avisos-container");
};