<%-- 
    Document   : editusuario
    Created on : 17/09/2017, 15:21:38
    Author     : porte
--%>

<%@page import="com.javatpoint.dao.UsuarioDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Usuario"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
    int i=UsuarioDao.update(u);  
    response.sendRedirect("index.jsp");  
%>
