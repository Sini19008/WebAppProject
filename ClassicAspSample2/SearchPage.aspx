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

            
    <h2> Yrityksen perustamisajankohta </h2>
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
                       if(Request.Form.Count > 0)
                       {
                           string date1 = Request.Form["date1"];
                           string date2 = Request.Form["date2"];
                           string select1 = Request.Form["select1"];


                           string webAddress = "https://avoindata.prh.fi/tr/v1?totalResults=false&maxResults=10&companyRegistrationFrom=" + date1 + "&companyRegistrationTo=" + date2;

                           WebRequest myRequest = WebRequest.Create(webAddress);
                           WebResponse response = myRequest.GetResponse();
                           // Get the stream containing content returned by the server.
                           Stream dataStream = response.GetResponseStream();
                           // Open the stream using a StreamReader for easy access.
                           StreamReader reader = new StreamReader(dataStream);
                           // Read the content.
                           string responseFromServer = reader.ReadToEnd();


                           string[] joku = responseFromServer.Split('"');
                           //Response.Write(joku[0]);
                           int i = 0;

                           while(i < joku.Length)
                           {
                               if (joku[i] == "detailsUri") //39
                               {
                                   string webAddress2 = joku[i + 2];

                                   WebRequest myRequest2 = WebRequest.Create(webAddress2);
                                   WebResponse response2 = myRequest2.GetResponse();

                                   Stream dataStream2 = response2.GetResponseStream();

                                   StreamReader reader2 = new StreamReader(dataStream2);

                                   string responseFromServer2 = reader2.ReadToEnd();

                                   string[] joku2 = responseFromServer2.Split('"');
                                   //Response.Write(responseFromServer2);

                                   int f = 0;
                                   while (f < joku2.Length)
                                   {

                                       //if(joku2[f] == "name")



                                       if(joku2[f] == "city") //95
                                       {
                                           //tähän vielä city == select1
                                           if (joku2[f] == Request.Form["select1"])
                                           {
                                               Response.Write(select1);
                                           
                                            
                                            

                                             int v = 0;
                                             while (joku2[v] != "name")
                                             {
                                               v++;

                                               if (joku2[v] == "name") //25
                                               {
                                                   string yrityksennimi = joku2[v + 2];
                                                   //Console.Write(yrityksennimi);

                                                   Response.Write(yrityksennimi);
                                                       //arrayn nimi lukumäärä väliaikainen muuttuja löydettyjen tulosten 10
                                               }
                                             }
                                           
                                           }

                                       }
                               f++;}


                               }
                               i++;
                           }


                       }













                       %>

                      
   
            
 
		     </div>


		</div>
    
</body>
</html>
 
 