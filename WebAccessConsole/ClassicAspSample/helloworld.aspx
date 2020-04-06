<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="helloworld.aspx.cs" Inherits="ClassicAspSample.helloworld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><%
for (int i = 0; i < 10; i++)
//Response object is what user will get
Response.Write("Hello World " + (i+1) + " times <br>");
%>

        </div>
    </form>
</body>
</html>
