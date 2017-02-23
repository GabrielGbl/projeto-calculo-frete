<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="static/css/style.css" type="text/css"/>
        <title>UNISAL - Desenvolvimento de Sistemas Web e Mobile</title> 
       
       <style>
       	body {
                background: #66B2FF;
                background: -webkit-linear-gradient(right, #CCE5FF, #CCE5FF);
                background: -moz-linear-gradient(right, #CCE5FF, #CCE5FF);
                background: -o-linear-gradient(right, #CCE5FF, #CCE5FF);
                background: linear-gradient(to left, #CCE5FF, #CCE5FF);
                font-family: "Roboto", sans-serif;
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;      
            }
       </style>      
    </head>
    <body>
        <div class="login-page">
            <div class="form">
                <form action="controlador-geral?execute=Login" method="post">
				    <input type="submit" value="Login" />
				</form>
            </div>
        </div>
    </body>
</html>