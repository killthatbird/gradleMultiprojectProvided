<%@ page language='java' %>
<%
    String pri = request.getParameter("pri");
    if (pri != null) {
        session.setAttribute("USER_PRI", pri);
System.out.println("Saving PRI " + pri);
    }
%>