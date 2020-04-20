﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="ClassicAspSample2.SearchPage" %>

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

//Now this string includes all data from the external web site for further use

       /*    Tästä pitäisi muokata kaupunkihaku
        *    string[] words = responseFromServer.Split();
    int a = 0;
    while(!words[a].Contains("currency='USD'") && a<words.Length)
    {
        a++;
    }

    string lukusana = words[a + 1];
    lukusana = lukusana.Substring(6);
    int pituus = lukusana.Length - 3;
    lukusana = lukusana.Substring(0,pituus);
    lukusana = lukusana.Replace('.', ',');
    double luku = Convert.ToDouble(lukusana);
    Response.Write(luku);

    //Now this string includes all data from the external web site for further use
    //Response.Write(responseFromServer); */
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
                       if(Request.Form.Count > 0)
                       {
                           string date1 = Request.Form["date1"];
                           string date2 = Request.Form["date2"];
                           string select1 = Request.Form["select1"];
                           string nimihaku = Request.Form["nimihaku"];

                           string webAddress = "https://avoindata.prh.fi/tr/v1?totalResults=false&maxResults=1000&companyRegistrationFrom=" + date1 + "&companyRegistrationTo=" + date2;

                           WebRequest myRequest = WebRequest.Create(webAddress);
                           WebResponse response = myRequest.GetResponse();
                           // Get the stream containing content returned by the server.
                           Stream dataStream = response.GetResponseStream();
                           // Open the stream using a StreamReader for easy access.
                           StreamReader reader = new StreamReader(dataStream);
                           // Read the content.
                           string responseFromServer = reader.ReadToEnd();


                           string[] joku = responseFromServer.Split('"');
                           Response.Write(joku[0]);
                           int i = 0;

                           while(i < joku.Length)
                           {
                               if (joku[i] == "detailsUri")
                               {
                                   string webAddress2 = joku[i + 2];

                                   WebRequest myRequest2 = WebRequest.Create(webAddress2);
                                   WebResponse response2 = myRequest2.GetResponse();
                                   // Get the stream containing content returned by the server.
                                   Stream dataStream2 = response2.GetResponseStream();
                                   // Open the stream using a StreamReader for easy access.
                                   StreamReader reader2 = new StreamReader(dataStream2);
                                   // Read the content.
                                   string responseFromServer2 = reader2.ReadToEnd();
                                   string[] joku2 = responseFromServer2.Split('"');
                                   Response.Write(responseFromServer2);
                                   
                               }
                               i++;
                           }


                       }













                       %>

                      
   
            
 
		     </div>


		</div>
    
</body>
</html>
 
 