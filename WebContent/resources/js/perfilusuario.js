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