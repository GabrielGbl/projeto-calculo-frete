<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">          
 <link rel="icon" href="<c:url value="/static/img/favicon.ico" />" />
   <title>Projeto Frete</title>
 <!--  BOOTSTRAP -->
    <link href="<c:url value="/static/css/bootstrap.min.css" />" rel="stylesheet">
     <link href="<c:url value="/static/css/bootstrap-theme.css" />" rel="stylesheet">
     
    
  </head>

  <body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Fretão</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right" action="controlador-geral?execute=Logout" method="post">
					<button type="submit" class="btn btn-success">Logout</button>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>

