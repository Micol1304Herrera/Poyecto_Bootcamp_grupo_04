
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>UNIDOSCL</title>
</head>
<body class="container">
<<<<<<< HEAD
	<div class="row">
		<div class="col-6">
			<form:form action="/organizacion/org-register" method="POST" modelAttribute="newOrg">

				<h2>Registrate</h2>
=======
    <div class="container">
		<div class="row">
			<!-- Sección de Registro -->
			<div class="col-md-6" style="background-color: #acdfae; color: rgb(11, 59, 11);">
				<h2 class="fw-bold display-6">REGISTRO ORGANIZACION</h2>
				<form:form action="/register" method="post" modelAttribute="registro">
					<div class="mb-3 row">

						<form:label path="name" for="exampleInputEmail1"
							class="col-sm-3 col-form-label text-left">Nombre:</form:label>
						<div class="col-sm-9">
							<form:errors class="text-danger" path="name"/>
							<form:input path="name" type="text" class="form-control"
								id="name" />
						</div>
                        <div>
                            <form:label path="apellido" for="exampleInputEmail1"
                            class="col-sm-3 col-form-label text-left">Apellido: </form:label>
                            <div class="col-sm-9">
                                <form:errors class="text-danger" path="apellido" />
                                <form:input path="apellido" type="text" class="form-control"
                                    id="apellido" />
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
                                    id="edad" />
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
>>>>>>> 0e618f3e32a173da63ee17a1a0a3aa88df5f9f50

				<form:label path="nameOrganizacion">Name:</form:label>
				<form:input type="text" class="form-control" path="name"/>
				<form:errors path="name" class="text-danger"/>

				<form:label path="rutEmpresa">Rut empresa:</form:label>
				<form:input type="text" class="form-control" path="name"/>
				<form:errors path="name" class="text-danger"/>

<<<<<<< HEAD
				<form:label path="email">Email:</form:label>
				<form:input type="text" class="form-control" path="email"/>
				<form:errors path="email" class="text-danger"/>

				<form:label path="password">Password:</form:label>
				<form:input type="password" class="form-control" path="password"/>
				<form:errors path="password" class="text-danger"/>

				<form:label path="passwordConfirm">Password Confirmation:</form:label>
				<form:input type="password" class="form-control" path="passwordConfirm"/>
				<form:errors path="passwordConfirm" class="text-danger"/>

				<input type="submit" value="Resgister" class="btn btn-dark mt-3">
			</form:form>
=======
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
								id="password" />
						</div>
					</div>
					<div class="d-flex justify-content-end">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form:form>
			</div>
>>>>>>> 0e618f3e32a173da63ee17a1a0a3aa88df5f9f50
		</div>

		<div class="col-6">

				<h2>Iniciar Sesion</h2>
				<p class="text-danger">${error_login}</p>

				<form action="/login-org" method="post">
					<div>
						<label>E-mail</label>
						<input type="text" class="form-control" name="email" />
					</div>
					<div>
						<label>Password</label>
						<input type="password" class="form-control" name="password" />
					</div>
					<input type="submit" class="btn btn-dark mt-3" value="Login" />
				</form>

		</div>

	</div>
</body>
</html>