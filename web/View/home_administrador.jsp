<%-- 
    Document   : index_admin
    Created on : 16/09/2017, 18:07:26
    Author     : porte
--%>
<%
    if ((session.getAttribute("id") == null) || (session.getAttribute("id") == "" )) {
%>


<%} else {
%>
    Welcome <%=session.getAttribute("id")%>
<a href='logout.jsp'>Sair</a>
<%
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Administrador</title>
        
        <!-- Bootstrap Core CSS Importante menu lateral-->
        <link href="../Model/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../Model/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="../Model/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="../Model/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

        <!-- Custom CSS importante menu de cima-->
        <link href="../Model/dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts impotante imagens-->
        <link href="../Model/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-brand" href="home_administrador.jsp">DASHBOARD</a>
                </div>
                <!-- /.navbar-header -->
                <ul class="nav navbar-top-links navbar-right">
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="perfil.jsp"><span class="glyphicon glyphicon-user"></span>Perfil</a></li>
                            <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span>Sair</a></li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="home_administrador.jsp"><i class="fa fa-dashboard fa-fw"></i> Início</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i> Cadastros Básicos<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="Categoria/index.jsp">Categoria</a>
                                    </li>
                                    <li>
                                         <a href="Cliente/index.jsp">Cliente</a>
                                    </li>
                                    <li>    
                                         <a href="Fornecedor/index.jsp">Fornecedor</a>
                                    </li>
                                    <li>    
                                       <a href="Produtos/index.jsp">Produtos</a>
                                    </li>
                                    <li>    
                                        <a href="Usuario/index.jsp">Usuário</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-edit fa-fw"></i> Compras / Vendas<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="Compras/index.jsp">Compras</a>
                                    </li>
                                    <li>
                                        <a href="Vendas/index.jsp">Vendas</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Área Administrativa</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- /.row -->
                <div class="row">
                    <!-- /.col-lg-8 -->
                    <div class="col-lg-12">
                        <div class="panel-body">
                            <div class="col-lg-6">
                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#comum">Cadastros Básicos</a>
                                            </h4>
                                        </div>
                                        <div id="comum" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <a href="Categoria/index.jsp">Categoria</a><br>
                                                <a href="Cliente/index.jsp">Cliente</a><br>
                                                <a href="Fornecedor/index.jsp">Fornecedor</a><br> 
                                                <a href="Produtos/index.jsp">Produtos</a><br>
                                                <a href="Usuario/index.jsp">Usuário</a><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#comprasvendas">Compras / Vendas</a>
                                            </h4>
                                        </div>
                                        <div id="comprasvendas" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                                <a href="Compras/index.jsp">Compras</a><br>
                                                <a href="Vendas/index.jsp">Vendas</a><br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div> 					
                    <!-- /.col-lg-4 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
        
        <!-- jQuery  deixa o menu lateral aberto-->
        <script src="../Model/vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript abir o menu lateral-->
        <script src="../Model/vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../Model/vendor/metisMenu/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="../Model/vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="../Model/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
        <script src="../Model/vendor/datatables-responsive/dataTables.responsive.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../Model/dist/js/sb-admin-2.js"></script>

    </body>
    
</html>
