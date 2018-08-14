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

function cargaAvisos(event, name){
	var url = contexto + "/services/auth/listaAvisos?nombre="+name ;
	var messageVecino = $("#messageaviso");
	var dateAviso = $("#dateaviso");
	var nameAviso = $("#nameaviso");
	var lastnameAviso = $("#lastnameaviso");
	var photoAviso = $("#photoaviso");
	$.ajax({
		url: url,
		dataType : "json",
		success: function (response, status){
			console.log(response);
			aviso.forEach(function(){
				var aviso = generaCuadro( name, lastname, photo, message, date );
			})
			
		}
	})
	return aviso;
}