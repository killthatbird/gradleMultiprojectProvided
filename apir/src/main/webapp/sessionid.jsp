<html>
<head>
<%@ page language="java" %>
</head>
<body>
<h1><%= session.getId() %></h1>
<p>
<%

au.com.apir.config.ConfigEditor cfg = new au.com.apir.config.ConfigEditor();
String gstRate = cfg.getValue("gst.rate");

if (gstRate == null) {
	throw new Exception("DB LOOKUP FAILED");
}
%>
GST RATE: <%=gstRate%>
</p>
</body>
</html>