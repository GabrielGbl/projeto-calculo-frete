<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="template/header.jsp" />

<form action="controlador-geral?execute=Logout" method="post">
    <input type="submit" value="Logout" />
</form>
<hr/>
<form action="controlador-geral?execute=CalculaFrete" method="post">
    <input type="submit" value="Calcular Frete" />
</form>

<div class="container">
		<div class="row">
			<div class="cadastro-text">
				<p>Cadastro de cidades</p>
			</div>				
			  <div class="cadastro col-lg-12 col-md-12 col-sm-12">
					<form id="form-cadastro" class="form-cadastro" name="form-cadastro" method="post" action="">
						<input type="text" name="nome_cidade" required="required" placeholder="Cidade">
						<input type="text" name="geocodigo" required="required" placeholder="Geocódigo">
						<input type="text" name="latitude"  required="required" placeholder="Latitude">
						<input type="text" name="longitude"  required="required" placeholder="Longitude">
						<button  type="submit" class="btn-form">Cadastrar</button>			
					</form>
				<button class="btn btn-form"  type="submit" >Voltar</button>
			  </div>
		</div>
	</div>

<c:import url="template/footer.jsp" />