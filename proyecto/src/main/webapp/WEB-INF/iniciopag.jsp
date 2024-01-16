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
        
        background-image: url(./img/voluntariofondo3.png) ;
    }
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: white;
      font-size: xx-large;
      padding-left: 30px;
     
      
    }
    
    #diseñologo{
        padding-top: 10px;
        padding-left: 10px;
        height: 80px;
    }
    #jumbotron{
        color: #364908;
        background-color: transparent;
        justify-content: space-evenly;
        margin-left: 30px;
        display: inline-flex;
        padding-left: 40px;
        
    }
    #volunt{
        width: 200px;
        height: 300px;
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
    
    li{
        padding-top: 20px;
        padding-left: 30px;
    }
    #logo{
        height: 500px;
        width: 900px;
    }
    a{
        color: #364908;
        font-size: xx-large;
    }
    .my-button {
        background-color: #445A14;
        color: white;
        border: none;
        border-radius: 40px;
        cursor: pointer;
        height: 130px;
        width: 500px;
        
        margin: 40px;
        font-size: xx-large;
    }
    #intro{
    padding-left: 40px;
    }
    .my-button:hover {
    background-color: #3cac41;
    }

    .my-button:active {
    background-color: #3e8e41;
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
      <img id="diseñologo" src="./img/Diseño sin título.png" height="40px"  alt="">
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul id="barra" class="nav navbar-nav">
        <li class="active"><a href="#">Inicio </a></li>
        <li><a href="#">Comunidad</a></li>
        <li><a href="#">Cotactanos</a></li>
        <li><a href="#">Servicios</a></li>
        <li><a href="#">Sobre nosotros</a></li>
      </ul>
      
    </div>
  </div>
</nav>


  <div class="container-fluid text-center">
    <div class="row">
      <div class="col-sm-6"  style=" color: #364908;
      justify-items: stretch;">
        <img id="logo" src="./img/cl-3--unscreen.gif" alt="">
        <h2 style="font-size:xx-large; color: #364908; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;" >Uniendo personas con un objetivo en común</h2>
        <br>
            <p style="font-size: xx-large;" >Nunca dudes de que un pequeño grupo de ciudadanos comprometidos y conscientes puede cambiar el mundo; de hecho, es lo único que siempre lo ha hecho. Margaret Mead</p>
            
      </div>
      <div class="col-sm-6"  style="margin-top: 90px;">
        <a href="./formvoluntario.jsp">
            <button class="my-button">Quiero hacer un voluntariado</button>
            </a>
            <br>
            <a href="./formorganizacion.jsp">
            <button class="my-button">Ofrezco un voluntariado</button>
            </a>
      </div>
    </div>
  </div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
