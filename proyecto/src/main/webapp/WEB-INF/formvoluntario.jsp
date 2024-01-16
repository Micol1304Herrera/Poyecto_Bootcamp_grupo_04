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
	<style>
        .custom-btn {
            background-color: rgb(11, 59, 11);
            color: white;
        }
    </style>
    <title>UNIDOSCL</title>
</head>
<body class="container">
    <div class="container">
		<div class="row">
			<!-- Sección de Registro -->
			<div class="col-md-6" style="background-color: #4CAF50; color: rgb(11, 59, 11);">
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
							<form:label path="region" class="col-sm-3 col-form-label text-left">Región:</form:label>
							<div class="col-sm-9">
								<form:errors class="text-danger" path="region" />
								<form:select path="region" class="form-control" id="region" onchange="cargarComunas()">
									<form:option value="" label="Selecciona una región" />
									<form:option value="region1" label="Región de Arica y Parinacota" />
									<form:option value="region2" label="Región de Tarapacá" />
									<form:option value="region3" label="Región de Antofagasta" />
									<form:option value="region4" label="Región de Atacamá" />
									<form:option value="region5" label="Región de Coquimbo" />
									<form:option value="region6" label="Región de Valparaíso" />
									<form:option value="region7" label="Región Metropolitana de Santiago" />
									<form:option value="region8" label="Región de O'Higgins" />
									<form:option value="region9" label="Región del Maule" />
									<form:option value="region10" label="Región de Ñuble" />
									<form:option value="region11" label="Región del Biobío" />
									<form:option value="region12" label="Región de La Araucanía" />
									<form:option value="region13" label="Región de Los Ríos" />
									<form:option value="region14" label="Región de Los Lagos" />
									<form:option value="region15" label="Región de Aysén" />
									<form:option value="region16" label="Región de Magallanes" />
								</form:select>
							</div>
						</div>
						
						<div>
							<form:label path="comuna" class="col-sm-3 col-form-label text-left">Comuna:</form:label>
							<div class="col-sm-9">
								<form:errors class="text-danger" path="comuna" />
								<form:select path="comuna" class="form-control" id="comuna">
									<form:option value="" label="Selecciona una comuna" />
									<form:option value="comuna1" label="Santiago" />
									<form:option value="comuna2" label="Providencia" />
									<form:option value="comuna3" label="Las Condes" />
									<form:option value="comuna4" label="Valparaíso" />
									<form:option value="comuna5" label="Viña del Mar" />
									<form:option value="comuna6" label="Quilpué" />
									<form:option value="comuna7" label="Concepción" />
									<form:option value="comuna8" label="Talcahuano" />
									<form:option value="comuna9" label="Coronel" />
									<form:option value="comuna10" label="La Serena" />
									<form:option value="comuna11" label="Coquimbo" />
									<form:option value="comuna12" label="Antofagasta" />
									<form:option value="comuna13" label="Calama" />
									<form:option value="comuna14" label="Iquique" />
									<form:option value="comuna15" label="Alto Hospicio" />
									<form:option value="comuna16" label="Puerto Montt" />
									<form:option value="comuna17" label="Castro" />
                                    <form:option value="comuna18" label="Castro" />
                                    <form:option value="comuna19" label="Temuco" />
                                    <form:option value="comuna20" label="Angol" />
                                    <form:option value="comuna21" label="Rancagua" />
                                    <form:option value="comuna22" label="San Fernando" />
                                    <form:option value="comuna23" label="Arica" />
                                    <form:option value="comuna24" label="Putre" />
                                    <form:option value="comuna25" label="Copiapó" />
                                    <form:option value="comuna26" label="Vallenar" />
                                    <form:option value="comuna27" label="Chillán" />
                                    <form:option value="comuna28" label="Bulnes" />
                                    <form:option value="comuna29" label="Punta Arenas" />
                                    <form:option value="comuna30" label="Puerto Natales" />
								</form:select>
							</div>
						</div>
						<div>
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
					</div>
					<div class="d-flex justify-content-end">
						<button type="submit" class="btn btn-primary">Register</button>
					</div>


					<c:if test="${registroExitoso}">
						<div class="alert alert-success custom-alert" role="alert">
							<div class="custom-icon"></div>
							<p>Successful registration.</p>
						</div>
						<div class="d-flex justify-content-end">
							<a href="/voluntario" class="btn btn-success custom-btn">Registrarse</a>
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
				<h2 class="fw-bold display-6 d-flex justify-content-end">Iniciar Sesion</h2>
				<form:form action="/login" method="post" modelAttribute="login">
					<div class="mb-3 row">
						<form:label path="email" for="exampleInputEmail2"
							class="col-sm-3 col-form-label text-left">CORREO:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="email" />
							<form:input path="email" type="email" class="form-control"id="email" />
					</div>
					<div class="mb-3 row">
						<form:label path="password" for="exampleInputPassword2"
							class="col-sm-3 col-form-label text-left">CONTRASEÑA:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="password" />
							<form:input path="password" type="password" class="form-control"
								id="password" />
						</div>
					</div>
					<div class="d-flex justify-content-end">
						<a href="/voluntario" class="btn btn-success custom-btn">Registrarse</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html> 