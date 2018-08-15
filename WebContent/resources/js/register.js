$(document).ready(function(){
	var url=contexto + "/services/confirm";
    $("#but_submit").click(function(event){
    	event.preventDefault();
    	var nombres = $("#name").val().trim();
    	var apellidos = $("#lastname").val().trim();
        var correo = $("#uemail").val().trim();
        var contrasena = $("#ucontrasena").val().trim();
        var foto = $("#photo-circle-register").val().trim();

        if(nombres != "" && apellidos != "" && correo != "" && contrasena != "" ){
            $.ajax({
                url:url,
                type:'POST',
                dataType: "json",
                data:{name:nombres,lastname:apellidos,uemail:correo,ucontrasena:contrasena,imgu:foto},
                success:function(response){
                    var msg = "";
                    console.log(response);
                    if(response != null && response != "" && response.access){
                        $("#formulario").submit();
                    }else{
                        msg = "llena los campos faltantes correctamente";
                    }
                    $("#message").html(msg);
                },
                error:function(error){
                	msg= "error del servidor";
                }
            });
        }
    });
});

function addArchive(){
	var inputFile = $('#regulation');
	var adjButton = $("#adj");
	var delButton = $("#del");
	var nobreArch = $("#nombre-arch");
	var callback = function(base64String){
		$('#filebase64-register').val(base64String);
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

function addPhotor(){
	var inputPhoto = $('#file-photo-register');
	var addPhotoButton = $('#photo-button-register');
	var inputBase64 = $('#photobase64-register');
	var callback = function (base64String){
		$('#photobase64-register').val(base64String);
		$('#photo-circle-register').css('background-image','url('+base64String+')');
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