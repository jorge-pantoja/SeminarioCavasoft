<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Trabajador"%>
<%@page import="Modelo.Trabajador"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.TrabajadorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Agregar Maquina</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="principal.jsp">CavaSoft</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="ControladorC?accion=listar">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ControladorM?accion=listar">Maquina</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ControladorOT?accion=listar">Orden de trabajo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ControladorF?accion=listar">Faena</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ControladorR?accion=listar">Reporte</a>
                        </li>
                        <li>
                            <a class="nav-link" href="ControladorAdmin?accion=listar">Administrador</a>
                        </li>
                        <li>
                            <a class="nav-link" href="ControladorT?accion=listar">Trabajador</a>
                        </li>
                    </ul>
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            Cerrar Sesion
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item">${txtNombre}</a></li>
                            <li><a class="dropdown-item text-center">${txtCorreo}</a></li>
                            <div class="dropdown-divider"></div>
                            <li><a class="dropdown-item text-center" href="index.jsp">Salir</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <span class="border">
            <div class="p-3 mb-2 bg-light text-dark container col-lg-6">
                <div class="col-lg-12">
                    <h1>Agregar Maquinas</h1>
                    <form name="addmaquina" action="ControladorM" class="row g-3">
                        <div class="col-6">
                            Nombre<br>  
                            <input placeholder="Nombre de la Máquina" class="form-control" type="text" name="txtNombre">
                        </div>
                        <div class="col-6">
                            Patente<br>
                            <input placeholder="Ingresar patente sin punto ni guión. Ejemplo: CCCC00" class="form-control" type="text" name="txtPatente">
                        </div>
                        <div class="col-6">
                            Marca
                            <select class="form-select disabled" aria-label="Default select example" name="txtMarca" required>
                                <option selected>Modelos</option>
                                <option value="Komatsu">Komatsu</option>
                                <option value="caterpillar">caterpillar</option>
                            </select>
                        </div>
                        <div class="col-6">
                            Modelo
                            <select class="form-select disabled" aria-label="Default select example" name="txtModelo">
                                <option selected>Modelos</option>
                                <option value="Bulldozers">Bulldozers</option>
                                <option value="Excavadoras">Excavadoras</option>
                                <option value="Motoniveladoras">Motoniveladoras</option>
                                <option value="Cargadores">Cargadores</option>
                                <option value="Rodillos AutoPropulsados">Rodillos AutoPropulsados</option>
                                <option value="Retroexcavadoras">Retroexcavadoras</option>
                                <option value="Camiones Tolva">Camiones Tolva</option>
                                <option value="Camiones Algibe">Camiones Algibe</option>
                            </select>
                        </div>
                        <div class="col-6">
                            Serie
                            <input placeholder="Ingresar solo números" class="form-control" type="number" name="txtSerie" min="1" required >
                        </div>
                        <div class="col-6">
                            Fecha De Creacion
                            <input class="form-control" type="date" name="txtFechaDeCreacion">
                        </div>
                        <div class="col-12">
                            Número de Chasis 
                            <input placeholder="17 dígitos" class="form-control" type="number" name="txtNumeroChasis">
                        </div>

                        <div class="btn-group" role="group" aria-label="Basic example">
                            <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
                            <a class="btn btn-primary" href="ControladorM?accion=listar">Regresar</a>
                        </div>
                        <div class="col-6" style="color: red">
                            <c:if test="${not empty errores}">${errores}</c:if>
                            <c:if test="${not empty mensaje}">${mensaje}</c:if> 
                            </div>
                    </form>
                </div>
            </div>
        </span>

    </body>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

</html>
