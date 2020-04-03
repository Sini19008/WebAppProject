<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="ClassicAspSample.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kattimatikaisenyritysetsin</title>
    <meta charset="UTF-8"/>
		<meta name="description" content="Hakukone"/>
		<link rel="stylesheet" type ="text/css" href="style.css"/>
</head>
<body>
    <img src="kissa.png" alt="kissa" class="kuva"/>


		
		<div id="nav1">
		<h1> <a href="sivu1.html"> Etusivu</a> </h1>
		</div>
		<div id="nav2">
		<h1> Hae uusia yrityksiä </h1> <br/>
		<h2> Paikkakunta: </h2>
			<div id="paikka">
            <select id="paikka">
                <option value="espoo">Espoo</option>
                <option value="helsinki">Helsinki</option>
                <option value="jyväskylä">Jyväskylä</option>
                <option value="lahti">Lahti</option>
                <option value="oulu">Oulu</option>
                <option value="tampere">Tampere</option>
                <option value="turku">Turku</option>
                <option value="vantaa">Vantaa</option>
            </select>
        </div>

		 <h2> Yrityksen perustamisajankohta </h2>
		<input type="text" placeholder="Alkaen"/> ---
		<input type="text" placeholder="..."/>  <br/>
		<a href="sivu2.html" class="button">Hae</a>
		</div>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
