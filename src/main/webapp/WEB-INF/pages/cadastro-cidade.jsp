<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="template/header.jsp" />


<div class="row" style="margin:100px;">
			
		
<div class="col-md-9">
<h2>Cadastrar cidade</h2>
	<form class="form-group" action="controlador-geral?execute=CadastraCidade" method="post">
		<div class="form-group">
			<input type="text" placeholder="nome" name="nome" class="form-control" required="required">
		</div>
		<div class="form-group">
			<input type="text" placeholder="geocodigo" name="geocodigo" class="form-control" required="required">
		</div>
		<div class="form-group">
			<input type="text" placeholder="latitude" name="latitude" class="form-control" required="required">
		</div>
		<div class="form-group">
			<input type="text" placeholder="longitude" name="longitude" class="form-control" required="required">
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