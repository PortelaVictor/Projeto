<%-- 
    Document   : addusuario
    Created on : 17/09/2017, 14:24:19
    Author     : porte
--%>

<%@page import="com.javatpoint.dao.UsuarioDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Usuario"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
    int i=UsuarioDao.save(u);  
    if(i>0){  
        response.sendRedirect("addusuario-sucesso.jsp");  
    }else{  
        response.sendRedirect("addusuario-erro.jsp");  
    }  
%>