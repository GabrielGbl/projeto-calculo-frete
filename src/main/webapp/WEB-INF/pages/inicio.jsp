<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="template/header.jsp" />

<div class="row" style="margin:150px;">
			
		


<div class="col-md-4">
	<h2>Cadastro de Cidades</h2>
	<form class="form-group" action="controlador-geral?execute=ChamaCadastraCidade" method="post">
		<button class="btn btn-default btn-lg" type="submit">Cadastro de Cidades</button>
	</form>
	<p></p>
</div>
<div class="col-md-4">
	<h2>Cálculo de Frete</h2>
	
	</p><form class="form-group" action="controlador-geral?execute=ChamaCalculaFrete" method="post">
		<button class="btn btn-default btn-lg" type="submit">Cálculo de Frete</button>
	</form>
	<p></p>
</div>
<div class="col-md-4">				
</div>

</div>
  
<c:import url="template/footer.jsp" />