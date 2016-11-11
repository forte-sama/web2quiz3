<%@ page import="quiz3.Evento; quiz3.Usuario" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Form</title>
</head>
<body>

<div class="container" id="contenedorCrearUsuario">


    <div class = "col col-md-6 col-md-offset-3">
        <br>
        <br>
        <div class = "panel panel-default">
            <div class = "panel-heading">
                <h1>Registro de un usuarios a eventos:</h1>
            </div>
            <div class = "panel-body">
                <g:form controller="usuario" action="saveForm">
                    <div class="row">
                        <div class = "col col-md-6 col-md-offset-3">
                            <label >Evento:</label>
                            <g:select class="form-control" name="evento" from="${Evento.list()}" optionValue="nombre" optionKey="id" />
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class = "col col-md-6 col-md-offset-3">
                            <label  for="usuario">Usuario a Registrar:</label>
                            <g:select class="form-control" name="usuario" from="${Usuario.list()}" value="nombre" optionValue="nombre" optionKey="id" />
                        </div>
                    </div>
                    <br>
                    <g:actionSubmit value="Registrar" action="saveForm" class="btn btn-success btn-block btn-lg"/>
                </g:form>
                <br>
            </div>
        </div>
    </div>

</div>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>