<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>IDEAS GENIALES</title>
</head>
<body class="container">
    <div class="container">
		<div class="row">
			<!-- Sección de Registro -->
			<div class="col-md-6" style="background-color: #acdfae; color: rgb(11, 59, 11);"></div>
				<h2 class="fw-bold display-6">REGISTRO ORGANIZACION</h2>
				<form:form action="/register" method="post" modelAttribute="registro">
					<div class="mb-3 row">

						<form:label path="name" for="exampleInputEmail1"
							class="col-sm-3 col-form-label text-left">Nombre:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="name"/>
							<form:input path="name" type="text" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"/>
						</div>
                        <div>
                            <form:label path="apellido" for="exampleInputEmail1"
                            class="col-sm-3 col-form-label text-left">Apellido: </form:label>
                            <div class="col-sm-9">
                                <form:errors class="text-danger" path="apellido" />
                                <form:input path="apellido" type="text" class="form-control"
                                    id="exampleInputEmail1" aria-describedby="emailHelp" />
                            </div>
                        </div>
                        <div>
                            <select class="form-select form-select-sm" aria-label="Small select">
                                <option selected="">Selecciona la región en donde vives</option>
                                <option value="1">RM</option>
                            </select>
                        </div>
                        <div>
                            <form:label path="edad" for="exampleInputEmail1"
                            class="col-sm-3 col-form-label text-left">Edad: </form:label>
                            <div class="col-sm-9">
                                <form:errors class="text-danger" path="edad" />
                                <form:input path="edad" type="number" class="form-control"
                                    id="exampleInputEmail1" aria-describedby="emailHelp" />
                            </div>
                        </div>
					</div>
					<div class="mb-3 row">
						<form:label path="email" for="exampleInputEmail1"
							class="col-sm-3 col-form-label text-left">Email:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="email" />
							<form:input path="email" type="email" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp" />
						</div>
					</div>
					<div class="mb-3 row">
						<form:label path="password" for="exampleInputPassword"
							class="col-sm-3 col-form-label text-left">Password:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="password" />
							<form:input path="password" type="password" class="form-control"
								id="exampleInputPassword" />
						</div>
					</div>
					<div class="mb-3 row">
						<form:label path="passwordConfirmation"
							for="exampleInputConfirmation"
							class="col-sm-3 col-form-label text-left">Password Conf:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="passwordConfirmation" />
							<form:input path="passwordConfirmation" type="password"
								class="form-control" id="exampleInputConfirmation" />
						</div>
					</div>
					<div class="d-flex justify-content-end">
						<button type="submit" class="btn btn-primary">Register</button>
					</div>


					<c:if test="${registroExitoso}">
						<div class="alert alert-success custom-alert" role="alert">
							<div class="custom-icon"></div>
							<p>Successful registration.</p>
						</div>
					</c:if>
				</form:form>
			</div>

			<!-- Sección de Inicio de Sesión -->
			<div class="col-md-6" style="background-color: white; color: rgb(11, 59, 11);">
				<h2 class="fw-bold display-6 d-flex justify-content-end">Login</h2>
				<form:form action="/login" method="post" modelAttribute="login">
					<div class="mb-3 row">
						<form:label path="email" for="exampleInputEmail2"
							class="col-sm-3 col-form-label text-left">Email:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="email" />
							<form:input path="email" type="email" class="form-control"
								id="exampleInputEmail2" aria-describedby="emailHelp" />
						</div>
					</div>
					<div class="mb-3 row">
						<form:label path="password" for="exampleInputPassword2"
							class="col-sm-3 col-form-label text-left">Password:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="password" />
							<form:input path="password" type="password" class="form-control"
								id="exampleInputPassword2" />
						</div>
					</div>
					<div class="d-flex justify-content-end">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>