<%@ page import="db.DbConnection" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/7/2019
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$JSP Practice</title>
  </head>
  <body>
  <%

    String regno=request.getParameter("regno");
    if(!(regno==null||regno.equals(""))){
      DbConnection.insertData(regno);
      out.println("<h1> DATA INSERTED</h1>");
    }


  %>
  <form method="post" action="index.jsp">


    RegNo:
    <input type="text" regno="regno">

    <button type="submit">Save</button>
  </form>


  </body>
</html>
