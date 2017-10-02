<%-- 
    Document   : editproduto
    Created on : 22/09/2017, 19:53:31
    Author     : porte
--%>

<%@page import="com.javatpoint.dao.CategoriaDao"%>  
<jsp:useBean id="c" class="com.javatpoint.bean.Categoria"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  
<%  
    int i=CategoriaDao.update(c);
    response.sendRedirect("index.jsp");  
%>