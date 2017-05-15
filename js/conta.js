// cotrole avançando
$("#form1Next").click(function(){ 
    if ($("#nome").val() == '')  { 
        campoObrigatorio("nome");  
    } 
    if (document.formulario.email.value == '')  {  
       	campoObrigatorio("email");  
    } 
    if (document.formulario.senha.value == '')  {  
       	campoObrigatorio("senha");   
    } 

    if( $("#nome").val() != '' &&  $("#email").val() != '' && $("#senha").val() != ''){
      escondeMensagem();
      $("#form1").css("display", "none");
      $("#form2").css("display", "inline");
    }
});

$("#form2Next").click(function(){
	if ($("#dataNascimento").val() == '')  { 
        campoObrigatorio("dataNascimento");  
    }  
    if (document.formulario.cidade.value == '')  {  
       	campoObrigatorio("cidade");   
    } 
	if( $("#dataNascimento").val() != '' &&  $("#cidade").val() != ''){
    escondeMensagem();
	$("#form2").css("display", "none");
	$("#form3").css("display", "inline");
	}
});

$("#form3Next").click(function(){
    if ($("#sexo").val() == '')  { 
        campoObrigatorio("sexo");  
    }  
    if (document.formulario.status.value == '')  {  
       	campoObrigatorio("status");   
    } 
	if( $("#sexo").val() != '' &&  $("#status").val() != ''){
    escondeMensagem();
	$("#form3").css("display", "none");
	$("#form4").css("display", "inline");
	}
});

$("#form4Next").click(function(){
	$("#form4").css("display", "none");
	$("#form5").css("display", "inline");
});

// controle voltando
$("#form5Back").click(function(){
	$("#form5").css("display", "none");
	$("#form4").css("display", "inline");
});

$("#form4Back").click(function(){
	$("#form4").css("display", "none");
	$("#form3").css("display", "inline");
});

$("#form3Back").click(function(){
	$("#form3").css("display", "none");
	$("#form2").css("display", "inline");
});

$("#form2Back").click(function(){
	$("#form2").css("display", "none");
	$("#form1").css("display", "inline");
});

function campoObrigatorio(campo){
  $("#camposObrigatorios").css("display", "inline");
  $("#"+campo).css("border", "1px solid #A52A2A");
}

function escondeMensagem(){
  $("#camposObrigatorios").css("display", "none");
}



