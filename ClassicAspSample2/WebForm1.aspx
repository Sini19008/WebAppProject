<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ClassicAspSample2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
for (int i = 0; i < 10; i++)
//Response object is what user will get
    Response.Write("Hello World " + (i+1) + " times <br>");
%>
        </div>
    </form>

                <input id="Text1" value="<%= Convert.ToDouble(Request.Form["Text1"]) %>" type="text" />
            <input id ="Button1" type="submit" value="+" />
            <input id = "text2" value="<%=23%>" type"text" />
        </div>
        <input id ="Text3" name="Text3" value="<%=23 %>" type="text" /> 
    <% double result = 0.0;
if (Request.Form.Count > 0)
result = Convert.ToDouble(Request.Form["Text1"]) + Convert.ToDouble(Request.Form["Text2"]);
%>
</body>
</html>
