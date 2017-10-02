<%-- 
    Document   : addproduto
    Created on : 22/09/2017, 19:51:41
    Author     : porte
--%>

<%@page import="com.javatpoint.dao.CategoriaDao"%>  
<jsp:useBean id="c" class="com.javatpoint.bean.Categoria"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  
  
<%  
    int i=CategoriaDao.save(c);  
    if(i>0){  
        response.sendRedirect("addcategoria-sucesso.jsp");  
    }else{  
        response.sendRedirect("addcategoria-erro.jsp");  
    }  
%>