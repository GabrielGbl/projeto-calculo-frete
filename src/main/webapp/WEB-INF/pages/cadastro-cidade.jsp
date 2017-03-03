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
			
		


<div class="col-md-9">
	<form class="form-group" action="controlador-geral?execute=CadastraCidade" method="post">
		<div class="form-group">
			<input type="text" placeholder="nome" name="nome" class="form-control" required="required"/>
		</div>
		<div class="form-group">
			<input type="text" placeholder="geocodigo" name="geocodigo" class="form-control" required="required"/>
		</div>
		<div class="form-group">
			<input type="text" placeholder="latitude" name="latitude" class="form-control" required="required"/>
		</div>
		<div class="form-group">
			<input type="text" placeholder="longitude" name="longitude" class="form-control" required="required"/>
		</div>
		<button type="submit" class="btn btn-success">Salvar</button>
	</form>
	<hr>
	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>Nome</th>
					<th>Geocodigo</th>
					<th>Latitude</th>
					<th>Longitude</th>
				</tr>
			</thead>
			<tbody>
				 <c:forEach items="${citys}" var="city">
			        <tr>
			            <td>${city.id}</td>
			            <td><c:out value="${city.nome}" /></td>
			            <td><c:out value="${city.geocodigo}" /></td>
			            <td><c:out value="${city.latitude}" /></td>
			            <td><c:out value="${city.longitude}" /></td>
			        </tr>
			    </c:forEach>			 
			</tbody>
		</table>
		<form class="form-group" action="controlador-geral?execute=CarregaTabelaCidades" method="post">
		    <button type="submit" class="btn btn-default">Ver Cidades</button>
		</form>
	</div>
	<hr>
	<form class="form-group" action="controlador-geral?execute=Voltar" method="post">
	    <button type="submit" class="btn btn-default">Voltar</button>
	</form>
</div>

</div>

<c:import url="template/footer.jsp" />