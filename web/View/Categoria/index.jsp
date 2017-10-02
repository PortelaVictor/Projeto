<%-- 
    Document   : index
    Created on : 22/09/2017, 19:53:53
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
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Usuário</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap Core CSS Importante menu lateral-->
        <link href="../../Model/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../../Model/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="../../Model/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="../../Model/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

        <!-- Custom CSS importante menu de cima-->
        <link href="../../Model/dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts impotante imagens-->
        <link href="../../Model/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
		<div id="wrapper">
			<!-- Navigation -->
			<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-brand" href="..\home_administrador.jsp">DASHBOARD</a>
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
								<a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> Início</a>
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
		</div>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Categoria</h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-12">
                    <div id="list" class="row">
                        <div class="table-responsive col-md-12">
                            <%
                                //Variavel pesquisa
                                String pesquisa = "";
                                if(request.getParameter("pesquisa") != null){
                                    pesquisa = request.getParameter("pesquisa");
                                }
                            %>
                            <%
                                //Query para apresentar as categorias cadastradas e pesqusiar pelo nome cadastrado
                                Connection connect = null;
                                Statement s = null;
                                try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                    connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/producao","root","");
                                    s = connect.createStatement();
                                    String sql = "SELECT * FROM categoria WHERE nome like '%" + pesquisa + "%' " +
                                        "ORDER BY nome ASC ";
                                    System.out.println(sql);
                                    ResultSet rec = s.executeQuery(sql);

                            %>
                            
                            <form name="pesquisa" method="get" action="index.jsp">
                                <table >
                                    <tr>
                                        <td><label for="nome_completo"> Nome:</label></td>
                                        <td><input type="text" class="form-control" name="pesquisa"></td>
                                         <td colspan="2"> <button type="submit" id="pesquisar" name="pesquisar" class="btn btn-default">Pesquisar</button></td>
                                    </tr>
                                </table>
                            </form>
                            <br><br>
                            <a class="btn btn-default" href="categoriaform.jsp">Adicionar Categoria</a>
                            <br><br>
                            <table class="table table-striped" cellspacing="0" cellpadding="0">
                                <thead>
                                    <tr>
                                        <th>Categoria<th>
                                        <th class="actions">Ações</th>
                                     </tr>
                                </thead>
                                <%while((rec!=null) && (rec.next())){%>
                                <tbody>
                                    <tr>
                                        <td><%=rec.getString("nome")%></td>
                                        <td></td>
                                       <td class="actions">
                                            
                                            <a class="btn btn-warning btn-xs" href="editform.jsp?id=<%=rec.getString("id")%>">Editar</a>
                                            <a class="btn btn-danger btn-xs"  href="deleteform.jsp?id=<%=rec.getString("id")%>" >Excluir</a>
                                        </td>
                                    </tr>
                                <%}%>
                                </tbody>
                            </table>
                            <%
                                //fim da pesquisa e query
                                }catch(Exception e){
                                    out.println(e.getMessage());
                                    e.printStackTrace();
                                }
                                try{
                                    if(s!=null){
                                        s.close();
                                        connect.close();
                                    }
                                }catch(SQLException e){}    
                            %>    
                        </div>
                    </div> <!-- /#list -->
                </div>
            </div>
            <!-- /.row -->
        </div>
		<!-- /#wrapper -->
		<!-- jQuery  deixa o menu lateral aberto-->
		<script src="../../Model/vendor/jquery/jquery.min.js"></script>

		<!-- Bootstrap Core JavaScript abir o menu lateral-->
		<script src="../../Model/vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="../../Model/vendor/metisMenu/metisMenu.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="../../Model/dist/js/sb-admin-2.js"></script>

	</body>
    
</html>
