﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ClassicAspSample.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <img src="kissa.png" alt="kissa" class="kuva">
<div id="nav1">
		<h1> <a href="sivu1.html"> Etusivu</a> </h1>
		</div>
		<div id="nav2">
		<h1> Hae uusia yrityksiä </h1> <br>
		<h2> Paikkakunta: </h2>
			<div id="paikka">
	    <form id="form1" runat="server">
        <div>
        </div>
    </form>

        </div>

		 <h2> Yrityksen perustamisajankohta </h2>
		<input type="text" placeholder="Alkaen"> ---
		<input type="text" placeholder="...">  <br><br>
		<a href="sivu2.html" class="button">Hae</a>
		</div>


</body>
</html>