<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Londrina+Solid&family=Poppins&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    body{
        background-color: #f2ffd3;
    }
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: white;
      font-size: x-large;
      padding-left: 30px;
    }
    a{
        color: #364908;
    }
    #cont{
      margin-left: 30px;
    }
    img{
        padding-top: 10px;
        padding-left: 10px;
        height: 80px;
    }
    .jumbotron{
        background-image: url(./img/manos.png) ;
        height: 200px;
        padding-top: 0px;
        color: #364908;
    }
    #volunt{
        width: 400px;
        height: 400px;
        border-radius: 100%;
        margin-left: 20px;
    }
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    p{
        font-size: x-large;
        font-family: "Sofia", sans-serif;
    }
    h1{
        font-size: xx-large;
        font-family: "DM Serif Display", serif;
        font-weight: 400;
        font-style: normal;
        color: #6e9b07;
    }
    li{
      padding-top: 20px;
      padding-left: 30px;
    }
    a{
        color: #364908;
        font-size: xx-large;
    }

  </style>
</head>
<body>

<nav class="navbar navbar " >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <img src="./img/Diseño sin título.png" height="40px"  alt="">

    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul id="barra" class="nav navbar-nav">
        <li class="active"><a href="">Inicio </a></li>
        <li><a href="#">Foro</a></li>
        <li><a href="#">Comunidad</a></li>
        <li><a href="#">Cotacto</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div  class="jumbotron">
  <div id="port" class="container text-center">
    <h1>Voluntariados</h1>
    <p>Uniendo personas con un objetivo en común</p>
  </div>
</div>

<div id="cont" class="container-fluid bg-3 ">
  <h3 class="text-center">Seleciona tu categoria </h3><br>
  <div class="row">
    <div class="col-sm-3 ">
      <a href="./voluntariados.jsp">
      <img id="volunt"  src="./img/depo3.png" class="img-responsive "  alt="Image">
      </a>
    </div>
    <div class="col-sm-3">
      <a href="./voluntariados.jsp">
      <img id="volunt"   src="./img/Educativo.png" class="img-responsive"  alt="Image">
      </a>
    </div>
    <div class="col-sm-3">
      <a href="./voluntariados.jsp">
      <img id="volunt"   src="./img/Proteccioncivil.png" class="img-responsive"  alt="Image">
      </a>
    </div>
    <div class="col-sm-3">
      <a href="./voluntariados.jsp">
      <img id="volunt"   src="./img/comuni.png" class="img-responsive" alt="Image">
      </a>
    </div>
  </div>
</div><br>

<div  id="cont" class="container-fluid bg-3 ">
  <div class="row">
    <div class="col-sm-3 "  >
      <a href="./voluntariados.jsp">
      <img id="volunt"   src="./img/cultu.png" class="img-rounded-circle" alt="Image">
      </a>
    </div>
    <div class="col-sm-3">
      <a href="./voluntariados.jsp">
      <img id="volunt"   src="./img/soci.png" class="img-responsive" alt="Image">
      </a>
    </div>
    <div class="col-sm-3">
      <a href="./voluntariados.jsp">
      <img id="volunt"   src="./img/ocioy.png" class="img-responsive" alt="Image">
      </a>
    </div>
    <div class="col-sm-3" >
      <a href="./voluntariados.jsp">
      <img id="volunt"src="./img/mediamb.png" class="img-responsive" alt="Image">
      </a>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
