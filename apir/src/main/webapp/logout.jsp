<html>
<head>
<meta http-equiv="Page-Enter"       content="revealTrans(Duration=3,Transition=12)">
<meta http-equiv="Page-Exit"        content="revealTrans(Duration=3,Transition=12)">
<%@ page language="java" %>
<link rel="stylesheet" type="text/css" href="/public/css/content.css">
</head>
<body>
<p>
This is a hidden page used to invalidate your session information.
</p>
<p>
Your session has been invalidated.
</p>
<ul>
    <li>Old session id <%= session.getId() %></li>
<%
session.invalidate();
%>
    <li>New session id <%= session.getId() == null ? "" : session.getId() %></li>
</ul>
</body>
</html>