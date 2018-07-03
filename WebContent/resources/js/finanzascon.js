var agregarButton = $("#agregarcuenta");
// agregarButton.click(agregarCuadro);
var contador = 1
var contenedor = $("#cuadro-contenedor");
function agregarCuadro(e, num) {
	numeroCuadro = num;
	e.preventDefault();
	var url = contexto + "/services/cuadrofinanzas?num=" + numeroCuadro;
	$.ajax({
		url : url,
		method : 'GET',
		success : function(response, status) {
			contenedor.append(response);
			$("#contador").val(numeroCuadro);
			$('body').bootstrapMaterialDesign()
		},
		error : function(error) {
			console.log(error);
		}
	})
	numeroCuadro++;
}
$("body").ready(function() {
	var e = new Event("click");
	agregarCuadro(e, 1);
});