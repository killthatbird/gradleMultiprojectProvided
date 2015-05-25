<%@ page language="java" errorPage="/error.jsp" %>
<%
  String titleText = "Invalid Browser";
  String brName = (String)session.getAttribute("BR_NAME");
  String brVer = (String)session.getAttribute("BR_VER");

  if (brName == "IE")
    brName = "Internet Explorer";
%>
<html>
  <head>
    <title>
      <%=titleText%>
    </title>
    <link rel="stylesheet" type="text/css" href="apir.css">
  </head>
<body>
<h1>
  <%=titleText%>
</h1>
<hr>
<p>
  The Internet browser you are using to access the APIR website is invalid. The APIR website
  requires at least Microsoft Internet Explorer v4.0 or Netscape v4.0. Your current Internet
  browser is <%=brName%> version <%=brVer%>. You will need to upgrade to Microsoft Internet Explorer
  version 4.0 or above to view the APIR website with best results.
</p>
</body>
</html>
