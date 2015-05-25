<%@ page language='java' isErrorPage='true' import='java.io.*,java.util.*,java.net.*'%>
<head>
<title>APIR Error Page</title>
<link rel='stylesheet' type='text/css' href='/public/css/content.css' />
<script src='/public/js/screenutils.js'>
<!--
//-->
</script>
</head>
<body>
<h3><%= exception.getMessage() %></h3><br>
<%
    StringBuffer sb = new StringBuffer();
    sb.append("Timestamp:\n");
    sb.append(new Date().toString());
    sb.append('\n');
    sb.append("Form Data:\n");
    Enumeration<?> e  = session.getAttributeNames();
    while (e.hasMoreElements()) {
        String key = (String)e.nextElement();
        Object obj = session.getAttribute(key);
        sb.append(key + "=" + obj + ",\n");
    }
    e = request.getParameterNames();
    while (e.hasMoreElements()) {
        String key = (String)e.nextElement();
        String s = request.getParameter(key);
        sb.append(key + "=" + s + ",\n");
    }
    sb.append('\n');
    sb.append("Stack Trace:\n");
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    exception.printStackTrace(new PrintStream(baos));
    String str = new String(baos.toByteArray());
    sb.append(str);
    sb.append('\n');
%>
<h3>An error has occurs:  <%= exception.getClass().getName() %></h3>
<p>Please click the 'Send' button to email the following information to APIR.</p>
<form action='mailto:webmaster@apir.com.au'>
<input type='hidden' name='subject' value='Application error' />
<p align='center'><textarea cols='80' rows='25' name='body'><%= URLEncoder.encode(sb.toString(), "UTF-8") %></textarea></p>
<p align='center'><input type='submit' value='Send'/></p>
</form>
<%
    exception.printStackTrace();
%>
</body>

