<html>
<head>
<%@ page language='java' import="java.math.*,java.util.*,java.text.*,au.com.apir.util.*,au.com.apir.ejb.*,au.com.apir.core.model.*,au.com.apir.core.editor.*" %>
<!--<meta http-equiv='refresh' content='30;URL=testpage.jsp' />-->
<title>APIR Test Page</title>
<style>
.FADEBOX {
    filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr='orange', EndColorStr='#000000ff')
}

H1
{
    COLOR: yellow;
    TEXT-ALIGN: center
}
H2
{
    TEXT-ALIGN: center
}
H3
{
    TEXT-ALIGN: center
}
H4
{
    TEXT-ALIGN: center
}
</style>
</head>
<body bgcolor='black'>
<%
    Integer counter = (Integer)session.getAttribute("COUNTER");
    if (counter == null) {
        counter = new Integer(0);
    }
    counter = new Integer(counter.intValue() + 1);
    session.setAttribute("COUNTER", counter);
%>
<font size="-2" color="green">
    <%= counter.intValue() % 2 == 0 ? "" : session.getId() %>
</font>
<table style="width: 100%; height: 90%;">
<%
    Random random = new Random();
    int MAX_ROW = 10;
    int MAX_COL = 10;
    int row = random.nextInt(MAX_ROW);
    int col = random.nextInt(MAX_COL);
    for (int r = 0; r < MAX_ROW; r++) {
%>
<tr>
<%
        for (int c = 0; c < MAX_COL; c++) {
            if (row == r && col == c) {
                ParticipantEditor participantEditor = new ParticipantEditor();
                ParticipantObject participant = participantEditor.loadParticipantByIdentifyingCode("APIR000AU");
%>
<td>
    <table class="fadebox" border="1"><tr><td>
    <h1>APIR Test Page</h1>
    <h2><%= java.net.InetAddress.getLocalHost().getHostAddress() %>:<%= java.net.InetAddress.getLocalHost().getHostName() %></h2>
    <h4><%= DateTime.getNowString() %></h4>
    <h3><%= participant.getIdentifyingCode() %></h3>
    <h3><%= participant.getName() %></h3>
    <h1>Test #<%= counter %> OK</h1>
    </td></tr></table>
</td>
<%
            } else {
%>
<td>&nbsp;</td>
<%
            }
        }
%>
</tr>
<%
    }
%>
</table>
<font size="-2" color="green">
    <%= counter.intValue() % 2 == 1 ? "" : session.getId() %>
</font>
</body>
</html>
