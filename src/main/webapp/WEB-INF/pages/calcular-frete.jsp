<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="template/header.jsp" />


<div class="container">
		<div class="row">
			<div class="cadastro-text">
				<p>Calcular Frete</p>
			</div>				
			  <div class="cadastro col-lg-12 col-md-12 col-sm-12">
					<form id="form-calcular" class="form-calcular" name="form-calcular" method="post" action="">
						<input type="text" name="nome_cidade1" required="required" placeholder="Cidade 1">
						<input type="text" name="nome_cidade2" required="required" placeholder="Cidade 2">
						<button  type="submit" class="btn-form">Calcular</button>			
					</form>
				<button class="btn-calcular btn-form"  type="submit" >Voltar</button>
			  </div>
		</div>
	</div>

<c:import url="template/footer.jsp" />