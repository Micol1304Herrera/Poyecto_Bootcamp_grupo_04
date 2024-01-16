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
    <title>Formulario</title>
</head>
<body class="container">
	<div class="row">
		<div class="col-6">
			<form:form action="/voluntario/register" method="POST" modelAttribute="newVoluntario">

				<h2>Registrate</h2>

				<form:label path="name">Name:</form:label>
				<form:input type="text" class="form-control" path="name"/>
				<form:errors path="name" class="text-danger"/>

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
		</div>

		<div class="col-6">

				<h2>Login</h2>
				<p class="text-danger">${error_login}</p>

				<form action="/users/login" method="post">
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