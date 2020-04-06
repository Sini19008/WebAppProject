﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="ClassicAspSample2.SearchPage" %>

<!DOCTYPE html>
<% double result = 0.0;
if (Request.Form.Count > 0)
result = Convert.ToDouble(Request.Form["Text1"]) + Convert.ToDouble(Request.Form["Text2"]);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hakukone</title>
    	<meta charset="UTF-8"/>
		<meta name="description" content="Hakukone"/>
		<link rel="stylesheet" type ="text/css" href="style1.css"/>
</head>
<body>
    <img src="kissa.png" alt="kissa" class="kuva"/>
        <div id="nav1">
		<h1> <a href="sivu1.html"> Etusivu</a> </h1>
		</div>
		<div id="nav2">
		<h1> Hae uusia yrityksiä </h1> <br/>
		<h2> Paikkakunta: </h2>
    <form id="form1" runat="server" method="post" action="SearchPage.aspx">
        <%String[] kaupungit = { "Lahti","Helsinki", "Tampere", "Turku", "Rovaniemi"};
            String selected = "";
            if (Request.Form.Count > 0)
                selected = Request.Form["Select1"];%>
        <div>
            <select id ="select1" name="select1">
                <%for (int i = 0; i < kaupungit.Length; i++)
                    {
                        if (selected != " " && selected == kaupungit[i])
                            Response.Write("<option selected = \"selected\" value=\"" + kaupungit[i] + "\">" + kaupungit[i] + "<option>");

                        else
                            Response.Write("<option value=\"" + kaupungit[i] + "\">" + kaupungit[i] + "</option>");
                    }
                    %>
            
            </select>
            
            </div>
    </form>
          <h2> Yrityksen perustamisajankohta </h2>
             
		<form action="/action_page.php">
  <label for="from">Päivämäärä 1</label>
  <input type="date" id="from" name="from"/>
            <label for="to">Päivämäärä 2</label>
  <input type="date" id="to" name="to"/>
           <input id ="button" type=" submit" value ="Hae" />

  
</form>
		
		</div>
</body>
</html>
 