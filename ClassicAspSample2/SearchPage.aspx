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
        <%String[] kaupungit = { "Akaa","Alajärvi","Alavieska","Alavus","Asikkala","Askola","Aura","Brändö","Eckerö","Enonkoski","Enontekiö","Espoo","Eura","Eurajoki","Evijärvi","Finström","Forssa","Föglö","Geta","Haapajärvi","Haapavesi","Hailuoto","Halsua","Hamina","Hammarland","Hankasalmi","Hanko","Harjavalta","Hartola","Hattula","Hausjärvi","Heinola","Heinävesi","Helsinki","Hirvensalmi","Hollola","Honkajoki","Huittinen","Humppila","Hyrynsalmi","Hyvinkää","Hämeenkyrö","Hämeenlinna","Ii","Iisalmi","Iitti","Ikaalinen","Ilmajoki","Ilomantsi","Imatra","Inari","Inkoo","Isojoki","Isokyrö","Janakkala","Joensuu","Jokioinen","Jomala","Joroinen","Joutsa","Juuka","Juupajoki","Juva","Jyväskylä","Jämijärvi","Jämsä","Järvenpää","Kaarina","Kaavi","Kajaani","Kalajoki","Kangasala","Kangasniemi","Kankaanpää","Kannonkoski","Kannus","Karijoki","Karkkila","Karstula","Karvia","Kaskinen","Kauhajoki","Kauhava","Kauniainen","Kaustinen","Keitele","Kemi","Kemijärvi","Keminmaa","Kemiönsaari","Kempele","Kerava","Keuruu","Kihniö","Kinnula","Kirkkonummi","Kitee","Kittilä","Kiuruvesi","Kivijärvi","Kokemäki","Kokkola","Kolari","Konnevesi","Kontiolahti","Korsnäs","Koski Tl","Kotka","Kouvola","Kristiinankaupunki","Kruunupyy","Kuhmo","Kuhmoinen","Kumlinge","Kuopio","Kuortane","Kurikka","Kustavi","Kuusamo","Kyyjärvi","Kärkölä","Kärsämäki","Kökar","Lahti","Laihia","Laitila","Lapinjärvi","Lapinlahti","Lappajärvi","Lappeenranta","Lapua","Laukaa","Lemi","Lemland","Lempäälä","Leppävirta","Lestijärvi","Lieksa","Lieto","Liminka","Liperi","Lohja","Loimaa","Loppi","Loviisa","Luhanka","Lumijoki","Lumparland","Luoto","Luumäki","Maalahti","Maarianhamina","Marttila","Masku","Merijärvi","Merikarvia","Miehikkälä","Mikkeli","Muhos","Multia","Muonio","Mustasaari","Muurame","Mynämäki","Myrskylä","Mäntsälä","Mänttä-Vilppula","Mäntyharju","Naantali","Nakkila","Nivala","Nokia","Nousiainen","Nurmes","Nurmijärvi","Närpiö","Orimattila","Oripää","Orivesi","Oulainen","Oulu","Outokumpu","Padasjoki","Paimio","Paltamo","Parainen","Parikkala","Parkano","Pedersören kunta","Pelkosenniemi","Pello","Perho","Pertunmaa","Petäjävesi","Pieksämäki","Pielavesi","Pietarsaari","Pihtipudas","Pirkkala","Polvijärvi","Pomarkku","Pori","Pornainen","Porvoo","Posio","Pudasjärvi","Pukkila","Punkalaidun","Puolanka","Puumala","Pyhtää","Pyhäjoki","Pyhäjärvi","Pyhäntä","Pyhäranta","Pälkäne","Pöytyä","Raahe","Raasepori","Raisio","Rantasalmi","Ranua","Rauma","Rautalampi","Rautavaara","Rautjärvi","Reisjärvi","Riihimäki","Ristijärvi","Rovaniemi","Ruokolahti","Ruovesi","Rusko","Rääkkylä","Saarijärvi","Salla","Salo","Saltvik","Sastamala","Sauvo","Savitaipale","Savonlinna","Savukoski","Seinäjoki","Sievi","Siikainen","Siikajoki","Siikalatva","Siilinjärvi","Simo","Sipoo","Siuntio","Sodankylä","Soini","Somero","Sonkajärvi","Sotkamo","Sottunga","Sulkava","Sund","Suomussalmi","Suonenjoki","Sysmä","Säkylä","Taipalsaari","Taivalkoski","Taivassalo","Tammela","Tampere","Tervo","Tervola","Teuva","Tohmajärvi","Toholampi","Toivakka","Tornio","Turku","Tuusniemi","Tuusula","Tyrnävä","Ulvila","Urjala","Utajärvi","Utsjoki","Uurainen","Uusikaarlepyy","Uusikaupunki","Vaala","Vaasa","Valkeakoski","Valtimo","Vantaa","Varkaus","Vehmaa","Vesanto","Vesilahti","Veteli","Vieremä","Vihti","Viitasaari","Vimpeli","Virolahti","Virrat","Vårdö","Vöyri","Ylitornio","Ylivieska","Ylöjärvi","Ypäjä","Ähtäri","Äänekoski"};
            String selected = "";
            if (Request.Form.Count > 0)
                selected = Request.Form["Select1"];%>
         
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

            
    <h2> Yrityksen perustamisajankohta: </h2>
   <div id="kalenteri">                           
   <label class="päivmäärät">Päivämäärä 1</label>
  <input type="date" id="date1" name="date1"/>
  <label class="päivämäärät2">Päivämäärä 2</label>
  <input type="date" id="date2" name="date2"/>
  
              </div>

            <div id ="submit">
                <input id ="button" type="submit" value ="Hae"/>
            </div>
            </div>
    </form>
             <div id ="tulokset">
            <h2>Tulokset</h2>
             
                   <%
                       try
                       {


                           if (Request.Form.Count > 0)
                           {
                               string date1 = Request.Form["date1"];
                               string date2 = Request.Form["date2"];
                               string select1 = Request.Form["select1"];


                               string webAddress = "https://avoindata.prh.fi/tr/v1?totalResults=false&maxResults=10&resultsFrom=0";

                               if (select1 != "")
                               {
                                   webAddress += "&registeredOffice=" + select1;
                               }
                               if (date1 != "")
                               {
                                   webAddress += "&companyRegistrationFrom=" + date1;
                               }
                               if (date2 != "")
                               {
                                   webAddress += "&companyRegistrationTo=" + date2;
                               }

                               WebRequest myRequest = WebRequest.Create(webAddress);
                               WebResponse response = myRequest.GetResponse();
                               // Get the stream containing content returned by the server.
                               Stream dataStream = response.GetResponseStream();
                               // Open the stream using a StreamReader for easy access.
                               StreamReader reader = new StreamReader(dataStream);
                               // Read the content.
                               string responseFromServer = reader.ReadToEnd();

                               const int max_size = 10;
                               string[] tuloksetYritys = new string[max_size];
                               string[] tuloksetKaupunki = new string[max_size];
                               string[] tuloksetPaivamaara = new string[max_size];
                               int lastYritys = 0;
                               int lastPaivamaara = 0;
                               int lastKaupunki = 0;

                               int Yrityshaku = 0;
                               while (Yrityshaku < max_size)
                               {
                                   //first occurrence of the character
                                   int firstYritys = responseFromServer.IndexOf("\"name\":\"", lastYritys);
                                   int firstYritys1 = firstYritys + 8;
                                   lastYritys = responseFromServer.IndexOf("\"", firstYritys1);
                                   int lengthYritys = lastYritys - firstYritys1;
                                   tuloksetYritys[Yrityshaku] = responseFromServer.Substring(firstYritys1, lengthYritys);
                                   Yrityshaku++;
                               }
                               int Paivamaarahaku = 0;
                               while (Paivamaarahaku < max_size)
                               {
                                   int firstPaivamaara = responseFromServer.IndexOf("\"registrationDate\":\"", lastPaivamaara);
                                   int firstPaivamaara1 = firstPaivamaara + 20;
                                   lastPaivamaara = responseFromServer.IndexOf("\"", firstPaivamaara1);
                                   int lengthPaivamaara = lastPaivamaara - firstPaivamaara1;
                                   tuloksetPaivamaara[Paivamaarahaku] = responseFromServer.Substring(firstPaivamaara1, lengthPaivamaara);
                                   Paivamaarahaku++;
                               }

                               int Kaupunkihaku = 0;
                               while (Kaupunkihaku < max_size)
                               {
                                   int firstKaupunki = responseFromServer.IndexOf("\"bisDetailsUri\":\"", lastKaupunki);
                                   int firstKaupunki1 = firstKaupunki + 17;
                                   lastKaupunki = responseFromServer.IndexOf("\"", firstKaupunki1);
                                   int lengthKaupunki = lastKaupunki - firstKaupunki1;
                                   String kaupungit = responseFromServer.Substring(firstKaupunki1, lengthKaupunki);

                                   WebRequest myReqdetails = WebRequest.Create(kaupungit);
                                   WebResponse detailsRes = myReqdetails.GetResponse();
                                   StreamReader detailreader = new StreamReader(detailsRes.GetResponseStream());
                                   String joku = detailreader.ReadToEnd();

                                   int firstKaupunki3 = joku.IndexOf("\"city\":\"");
                                   int firstKaupunki4 = firstKaupunki3 + 8;
                                   int lastKaupunki1 = joku.IndexOf("\"", firstKaupunki4);
                                   int lengthKaupunki1 = lastKaupunki1 - firstKaupunki4;
                                   tuloksetKaupunki[Kaupunkihaku] = joku.Substring(firstKaupunki4, lengthKaupunki1);
                                   Kaupunkihaku++;
                               }
















                               int tulokset = 0;
                               while (tulokset < max_size)
                               {
                                   //hakutulokset
                                   Response.Write(tuloksetYritys[tulokset] + "<br>");
                                   Response.Write(tuloksetPaivamaara[tulokset] + "<br>");
                                   Response.Write(tuloksetKaupunki[tulokset] + "<br><br>");
                                   tulokset++;
                               }
                           }
                       }
                       catch
                       {
                           Response.Write("<p style='margin:19px; color:red'>Error Message: Sorry, Information could not be found.</p>");
                       }

            %>
   
            
 
		     </div>


		</div>
    
</body>
</html>
 
 