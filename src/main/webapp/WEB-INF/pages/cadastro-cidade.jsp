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

<c:import url="template/footer.jsp" />