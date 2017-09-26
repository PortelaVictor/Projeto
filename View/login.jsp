<%-- 
    Document   : login
    Created on : 16/09/2017, 14:07:39
    Author     : porte
--%>

<%@page import="java.math.BigInteger"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.security.MessageDigest"%>
<%@ page import ="java.sql.*" %>
<%
    
    String login = request.getParameter("login");    
    String senha = request.getParameter("senha");
    String perfil = request.getParameter("perfil");
    
    //Criar hash da senha informada
    MessageDigest md = null;
    try {
    md = MessageDigest.getInstance("MD5");
    } catch (NoSuchAlgorithmException e) {
    e.printStackTrace();
    }
    BigInteger hash = new BigInteger(1, md.digest(senha.getBytes()));
    senha = hash.toString(16);	
   
    
   // Conexão do banco - Faz a consulta na tabela de usuario passando o login e senha e verificando
  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/producao",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select login, senha, perfil from usuario where login='" + login + "' and senha='" + senha + "' ");
    request.getParameter("perfil");
   
    if (rs.next()) {
        if(rs.getString("perfil").equals("administrador"))
        {
            session.setAttribute("login", login);
            response.sendRedirect("home_administrador.jsp");
        }
        if(rs.getString("perfil").equals("comprador"))
        {
            session.setAttribute("login", login);
            response.sendRedirect("home_comprador.jsp");
        }
        if(rs.getString("perfil").equals("vendedor"))
        {
            session.setAttribute("login", login);
            response.sendRedirect("home_vendedor.jsp");
        }
        
        } else {
        out.println("Invalido Login <a href='index.jsp'> </a>");
        
    }
%>

