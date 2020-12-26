//$(document).ready(function(){
//	var url=contexto + "/services/authentication";
//    $("#but_submit").click(function(event){
//    	event.preventDefault();
//        var correo = $("#uemail").val().trim();
//        var contrasena = $("#ucontrasena").val().trim();
//
//        if( correo != "" && contrasena != "" ){
//            $.ajax({
//                url:url,
//                type:'POST',
//                dataType: "json",
//                data:{uemail:correo,ucontrasena:contrasena},
//                success:function(response){
//                    var msg = "";
//                    console.log(response);
//                    if(response != null && response != "" && response.access){
//                        $("#formulario").submit();
//                    }else{
//                        msg = "nombre de usuario y/o contrasena incorrectos!";
//                    }
//                    $("#message").html(msg);
//                },
//                error:function(error){
//                	msg= "error del servidor";
//                }
//            });
//        }
//    });
//});