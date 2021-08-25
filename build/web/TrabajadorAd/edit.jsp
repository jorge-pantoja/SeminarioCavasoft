<%-- 
    Document   : edit
    Created on : 9 abr. 2021, 19:03:26
    Author     : Andres
--%>

<%@page import="Modelo.Trabajador"%>
<%@page import="ModeloDAO.TrabajadorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar Trabajador</title>
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
                <h1>Modificar Trabajador</h1>
                <%
                TrabajadorDAO dao = new TrabajadorDAO();
                int IDTra = Integer.parseInt((String) request.getAttribute("idtra"));
                Trabajador t = (Trabajador) dao.list(IDTra);
                %>
                
                <form action="ControladorT" class="row g-3">
                    <div class="col-6">
                    Nombre<br>  
                    <input class="form-control" type="text" name="txtNombre" value="<%= t.getNombre()%>"><br>
                    </div>
                    <div class="col-6">
                    Apellido<br>  
                    <input class="form-control" type="text" name="txtApellido" value="<%= t.getApellido()%>"><br>
                    </div>
                    <div class="col-6">
                    Rut<br>
                    <input class="form-control" type="text" name="txtRut" value="<%= t.getRut()%>"><br>
                    </div>
                    <div class="col-6">
                    Digito Verificador<br>
                    <input class="form-control" type="text" name="txtDvRut" value="<%= t.getDvRut()%>"><br>
                    </div>
                    <div class="col-6">
                    Telefono<br>
                    <input class="form-control" type="text" name="txtTelefono" value="<%= t.getTelefono()%>"><br>
                    </div>
                    <div class="col-6">
                    Correo<br>
                    <input class="form-control" type="text" name="txtCorreo" value="<%= t.getCorreo()%>"><br>
                    </div>
                    <input type="hidden" name="txtIDTra" value="<%= t.getIDTra()%>">
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                    <a class="btn btn-primary" href="ControladorT?accion=listar">Regresar</a>
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
