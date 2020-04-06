<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalcSumAsClassicASP.aspx.cs" Inherits="ClassicAspSample2.CalcSumAsClassicASP" %>

<!DOCTYPE html>
<% double result;
if (Request.Form.Count == 0)
result = 0;
else
result = Convert.ToDouble(Request.Form["Text1"]) + Convert.ToDouble(Request.Form["Text2"]);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> <title>Add numbers by Server Script</title> </head>
<body onload="return window_onload()">
<form id="form1" runat="server" method="post" action="CalcSumAsClassicASP.aspx">
<input id="Text1" name="Text1" value="<% =Convert.ToDouble(Request.Form["Text1"])%>" type="text" />
<input id="Button1" type="submit" value="+" />
<input id="Text2" name="Text2" value="<% =Convert.ToDouble(Request.Form["Text2"])%>" type="text" />
<strong>=</strong>
</form>
<input id="Text3" name="Text3" value= "<%=result %>" type="text" />
<%
if (result > 10)
Response.Write("<br><br> Your number has sufficiently high value!<br>");
%>
</body></html>
