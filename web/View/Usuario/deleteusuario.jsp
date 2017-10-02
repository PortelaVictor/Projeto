<%-- 
    Document   : deleteusuario
    Created on : 17/09/2017, 15:38:23
    Author     : porte
--%>

<%@page import="com.javatpoint.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    UsuarioDao.delete(u);
    response.sendRedirect("index.jsp");
%>
