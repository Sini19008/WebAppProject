<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="ClassicAspSample2.SearchPage" %>

<!DOCTYPE html>

<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net"%>

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
		<h1>  Etusivu</h1>
		</div>
		<div id="nav2">
		<h1> Hae uusia yrityksiä </h1> <br/>
		<h2> Paikkakunta: </h2>
    <form id="searchform1" runat="server" method="post" action="SearchPage.aspx">
        <%String[] kaupungit = { "Lahti","Helsinki","Tampere","Turku","Rovaniemi","Salo"};
            String selected = "";
            if (Request.Form.Count > 0)
                selected = Request.Form["Select1"];%>
          <%
StringWriter writer = new StringWriter();
WebRequest myRequest = WebRequest.Create(@"https://avoindata.prh.fi/tr/v1?totalResults=false&maxResults=1000&companyRegistrationFrom=2020-01-01&companyRegistrationTo=2020-01-31");
WebResponse response = myRequest.GetResponse();
// Get the stream containing content returned by the server.
Stream dataStream = response.GetResponseStream();
// Open the stream using a StreamReader for easy access.
StreamReader reader = new StreamReader(dataStream);
// Read the content.
string responseFromServer = reader.ReadToEnd();
//Now this string includes all data from the external web site for further use

%>
        <div>
            <select id ="select1" name="select1">
                <%for (int i = 0; i < kaupungit.Length; i++)
                    {
                        //if (selected != " " && selected == kaupungit[i])
                        if (selected == kaupungit[i])
                            Response.Write("<option value=\"" + kaupungit[i] + "\">" + kaupungit[i] + "</option>");
                            //Response.Write("<option selected = \"selected\" value=\"" + kaupungit[i] + "\">" + kaupungit[i] + "<option>");

                        else
                            Response.Write("<option value=\"" + kaupungit[i] + "\">" + kaupungit[i] + "</option>");
                  }
                    %>
   
            </select>

            
    <h2> Yrityksen perustamisajankohta </h2>
   <div id="kalenteri">                           
   <label class="päivmäärät">Päivämäärä 1</label>
  <input type="date" id="date1" name="date1"/>
  <label class="päivämäärät2">Päivämäärä 2</label>
  <input type="date" id="date2" name="date2"/>
  
              </div>
            <div id="yritys">
                <h2>Haku yrityksen nimellä</h2>
               <label class="yritys1"></label>
                <input type="text" id="nimihaku" name="nimihaku" value=""/><br/>
            </div>
            <div id ="submit">
                <input id ="button" type="submit" value ="Hae"/>
            </div>
            </div>
    </form>
             <div id ="tulokset">
            <h2>Tulokset</h2>
             
                   <%
        string date1 = Request.Form["date1"];
        string date2 = Request.Form["date2"];
      string select1 = Request.Form["select1"];
         string nimihaku = Request.Form["nimihaku"];
                        %>
   
            
      <%Response.Write(date1);%><br/><%Response.Write(date2);%><br/>
                 <%Response.Write(select1);%>
                 
                 <br/>

                 
                 <%Response.Write(nimihaku);%>
     
		     </div>


		</div>
    
</body>
</html>
 
 