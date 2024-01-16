<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

	<style>
		 .seccion-registro {
            background-color: #acdfae;
            color: rgb(11, 59, 11);
            padding: 20px; 
		 }
        .seccion-sesion {
            background-color: white;
            color: rgb(11, 59, 11);
            padding: 20px;
        }
        .custom-btn {
            background-color: rgb(11, 59, 11);
            color: white;
        }
		.navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: white;
	  color: rgb(11, 59, 11);
      font-size: x-large;
      padding-left: 30px;
        }
	 .icono-correo {
	width: 20px; 
    height: 20px; 
    margin-right: 5px; 
	    }
	 .icono-contra {
	width: 20px; 
    height: 20px; 
    margin-right: 5px; 
	    }
	 .fondo-verde {
		background-color: rgb(11, 59, 11);
	    }
	 .texto-blanco {
    color: white; 
        }
     footer {
            background-color: rgb(11, 59, 11);
            color: white; 
            padding: 10px; 
			margin-top: 20px;
        }
    </style>
    <title>UNIDOSCL</title>
</head>
<body>
	<nav class="navbar" >
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
    <div class="container">
		<div class="row">
			<!-- Sección de Registro -->
			<div class="col-md-6 seccion-registro" style="background-color: #acdfae; color: rgb(11, 59, 11);">
				<h2 class="fw-bold display-6">Registro Voluntarios</h2>
				<form:form action="/registerVoluntario" method="post" modelAttribute="Voluntarios">
					<div class="mb-3 row">

						<form:label path="name" for="name"
							class="col-sm-3 col-form-label text-left">Nombre:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="name"/>
							<form:input path="name" type="text" class="form-control"
								id="name"/>
						</div>
                        <div>
                            <form:label path="apellido" for="apellido"
                            class="col-sm-3 col-form-label text-left">Apellido: </form:label>
                            <div class="col-sm-9">
                                <form:errors class="text-danger" path="apellido" />
                                <form:input path="apellido" type="text" class="form-control"
                                    id="apellido" />
                            </div>
                        </div>
                        <div>
                            <form:label path="rut" for="rut"
                            class="col-sm-3 col-form-label text-left">Edad: </form:label>
                            <div class="col-sm-9">
                                <form:errors class="text-danger" path="rut" />
                                <form:input path="rut" type="number" class="form-control"
                                    id="rut"/>
                            </div>
                        </div>
						<div>
							<div class="mb-3 row">

								<div>
									<select class="form-select form-select-sm" aria-label="Small select">
										<option selected="">Selecciona la región en donde vives</option>
										<option value="R1">Región de Arica y Parinacota</option>
										<option value="R2">Región de Tarapacá</option>
										<option value="R3">Región de Antofagasta</option>
										<option value="R4">Región de Atacama</option>
										<option value="R5">Región de Coquimbo</option>
										<option value="R6">Región de Valparaíso</option>
										<option value="R7">Región Metropolitana de Santiago</option>
										<option value="R8">Región del Libertador General Bernardo O'Higgins</option>
										<option value="R9">Región del Maule</option>
										<option value="R10">Región de Ñuble</option>
										<option value="R11">Región de La Araucanía</option>
										<option value="R12">Región de Los Ríos</option>
										<option value="R13">Región de Los Lagos</option>
										<option value="R14">Región del Biobío</option>
										<option value="R15">Región de Aysén del General Carlos Ibáñez del Campo</option>
										<option value="R16">Región de Magallanes y de la Antártica Chilena</option>
									</select>
								</div>
							</div>
							<div class="mb-3 row">
								<form:label path="comuna" for="comuna" class="col-sm-3 col-form-label text-left">Comuna:</form:label>
								<div class="col-sm-9">
									<form:errors class="text-danger" path="comuna"/>
									<form:input path="comuna" type="text" class="form-control" id="comuna"/>
								</div>
							</div>
                            <form:label path="edad" for="edad"
                            class="col-sm-3 col-form-label text-left">Edad: </form:label>
                            <div class="col-sm-9">
                                <form:errors class="text-danger" path="edad" />
                                <form:input path="edad" type="number" class="form-control"
                                    id="edad" />
                            </div>
                        </div>
					</div>
					<div class="mb-3 row">
						<form:label path="email" for="email"
							class="col-sm-3 col-form-label text-left">Email:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="email" />
							<form:input path="email" type="email" class="form-control"
								id="email" />
						</div>
					</div>
					<div class="mb-3 row">
						<form:label path="password" for="password"
							class="col-sm-3 col-form-label text-left">Password:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="password" />
							<form:input path="password" type="password" class="form-control"
								id="password" />
						</div>
					</div>
					<div class="mb-3 row">
						<form:label path="passwordConfirmation"
							for="passwordConfirmation"
							class="col-sm-3 col-form-label text-left">Password Conf:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="passwordConfirmation" />
							<form:input path="passwordConfirmation" type="password"
								class="form-control" id="passwordConfirmation" />
						</div>

					<c:if test="${registroExitoso}">
						<div class="alert alert-success custom-alert" role="alert">
							<div class="custom-icon"></div>
							<p>Successful registration.</p>
						</div>
						<div class="d-flex justify-content-end">
							<a href="/voluntario" class="btn btn-success custom-btn">Registrarse</a>
						</div>
				</form:form>
			</div>

			<!-- Sección de Inicio de Sesión -->
			<div class="col-md-6 seccion-sesion" style="background-color: white; color: rgb(11, 59, 11);">
				<h2 class="fw-bold display-6 d-flex justify-content-end">Iniciar Sesion</h2>
				<form:form action="/loginVoluntario" method="post" modelAttribute="loginVoluntario">
					<div class="mb-3 row">
						<form:label path="email" for="exampleInputEmail2"
							class="col-sm-3 col-form-label text-left"> <img src="correoimg.png" alt="Correo" class="icono-correo" />
						</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="email" />
							<form:input path="email" type="email" class="form-control fondo-verde texto-blanco"id="email" />
					</div>
					<div class="mb-3 row">
						<form:label path="password" for="exampleInputPassword2"
							class="col-sm-3 col-form-label text-left"><img src="contraimg.png" alt="password" class="icono-contra" /></form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="password" />
							<form:input path="password" type="password" class="form-control fondo-verde texto-blanco"
								id="password" />
						</div>
					</div>
					<div class="d-flex justify-content-end">
						<a href="/voluntario" class="btn btn-primary custom-btn"> INICIAR SESION</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html> 