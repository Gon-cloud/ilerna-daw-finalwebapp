$(document).ready(function() {

	//Collapsa formulario de registro y enseña el formulario de inicio
	$("#signup").click(function() {
		$("#first").slideUp("slow", function(){
			$("#second").slideDown("slow");
		});
	});

	//Collapsa formulario de inicio y enseña el formulario de registro
	$("#signin").click(function() {
		$("#second").slideUp("slow", function(){
			$("#first").slideDown("slow");
		});
	});


});