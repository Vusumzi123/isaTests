function addArchive(){
	var inputFile = $('#regulation');
	var adjButton = $("#adj");
	var delButton = $("#del");
	var nobreArch = $("#nombre-arch");
	var callback = function(base64String){
		$('#filebase64-finanzasvec').val(base64String);
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

function addPhotofv(){
	var inputPhoto = $('#file-photo-finanzasvec');
	var addPhotoButton = $('#photo-button-finanzasvec');
	var inputBase64 = $('#photobase64-finanzasvec');
	var callback = function (base64String){
		$('#photobase64-finanzasvec').val(base64String);
		$('#photo-circle-finanzasvec').css('background-image','url('+base64String+')');
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