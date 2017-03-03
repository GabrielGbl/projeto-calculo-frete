<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="template/header.jsp" />

<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h2>Sistema de Cadastro de Cidades e Cálculo de Fretes</h2>
			<p class="texto">Sistema foi desenvolvido utilizando JSP, JSTL, SERVLETs, JDBC,
				PostgreSQL na Heroku e deploy com associação na conta do Github também em uma app criada na Heroku. 
			O sistema permite entrada de uma nova cidade e calculo de
				extensão e frete de acordo com regra interna. O sistema foi
				desenvolvido em sala de aula juntamente com os alunos da UNISAL -
				Lorena do curso da Pós em Desenvolvimento de Sistemas WEB e Mobile -
				Turma 2016. Após a entrega do trabalho final da turma, esse código fonte
				ficará disponível no Github.</p>
		</div>
	</div>
	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			
		


<div class="col-md-4">
	<h2>Cadastro de Cidades</h2>
	<p>Permite o cadastro de cidades e é obrigatório entrar um o
		valor para nome, geocodigo e latitude e longitude da Cidade.</p>	
	<form class="form-group" action="controlador-geral?execute=ChamaCadastraCidade"
		method="post">
		<button class="btn btn-default btn-lg" type="submit">Cadastro de Cidades</button>
	</form>
	</p>
</div>
<div class="col-md-4">
	<h2>Cálculo de Frete</h2>
	<p>Modelo simples para cáculo de Frete com regras internas fixas
		(dsitancia * valor_de_acordo_com_kilometragem). É esperado a
		entrada do geocódigo da cidade A e B.</p>
	<p>
	<form class="form-group" action="controlador-geral?execute=ChamaCalculaFrete"
		method="post">
		<button class="btn btn-default btn-lg" type="submit">Cálculo de Frete</button>
	</form>
	</p>
</div>
<div class="col-md-4">				
</div>

</div>

<hr>
  
<c:import url="template/footer.jsp" />