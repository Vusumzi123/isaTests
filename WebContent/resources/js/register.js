$(document).ready(function(){
	var url=contexto + "/services/confirm";
    $("#but_submit").click(function(event){
    	event.preventDefault();
    	var nombres = $("#name").val().trim();
    	var apellidos = $("#lastname").val().trim();
        var correo = $("#uemail").val().trim();
        var contrasena = $("#ucontrasena").val().trim();
        var foto = $("#imgu").val().trim();

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