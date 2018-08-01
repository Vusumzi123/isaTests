function agregaComent() {
	var ajaxObject = {
		url : contexto + "/services/auth/agregarcom",
		method : 'POST',
		data : {
			textCom : $("#text-com").val()
		},
		success : function(response, status) {
			$("#avisos-container").prepend(response);

		},
	}
	sendToken();
	contentAjax(ajaxObject, "avisos-container");
};

//$.getJSON(
//		'https://4goihg4vob.execute-api.us-west-2.amazonaws.com/aviso1/avisos',
//		function(data) {
//			// data is the JSON string
//		});