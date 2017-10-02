<%-- 
    Document   : logout
    Created on : 16/09/2017, 14:08:25
    Author     : porte
--%>

<%
    session.setAttribute("id", null);
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
