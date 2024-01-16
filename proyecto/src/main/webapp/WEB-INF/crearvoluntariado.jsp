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
<body>
<h2>Formulario de Voluntariado</h2>

<form action="/voluntariados/crear" method="post">
    <label for="nameVoluntariado">Nombre del Voluntariado:</label>
    <input type="text" id="nameVoluntariado" name="nameVoluntariado" required><br>

    <label for="region">Región:</label>
    <input type="text" id="region" name="region" required><br>

    <label for="direccion">Dirección:</label>
    <input type="text" id="direccion" name="direccion" required><br>

    <label for="nVoluntarios">Número de Voluntarios:</label>
    <input type="number" id="nVoluntarios" name="nVoluntarios" required><br>

    <label for="categoria">Categoría de Voluntariado:</label>
    <select id="categoria" name="categoria" required>
        <option value="categoria1">Categoría 1</option>
        <option value="categoria2">Categoría 2</option>
    </select><br>

    <label for="nombreOrganizacion">Nombre de la Organización:</label>
    <input type="text" id="nombreOrganizacion" name="nombreOrganizacion" value="${sessionScope.organizacion}" readonly><br>

    <label for="fechaInicio">Fecha de Inicio:</label>
    <input type="date" id="fechaInicio" name="fechaInicio" required><br>

    <label for="fechaFin">Fecha de Fin:</label>
    <input type="date" id="fechaFin" name="fechaFin" required><br>

    <button type="submit">Crear Voluntariado</button>
</form>
</body>
</html>

</body>
</html>