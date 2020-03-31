using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net; //For Internet request
using System.IO; //For StreamReader object

namespace WebAccessConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            //Instructions for user
            Console.WriteLine("Press 'Enter' to make a web request");
            Console.ReadLine(); //Wait for response from user
            WebRequest req = WebRequest.Create("http://www.lamk.fi");
            WebResponse resp = req.GetResponse(); //Make request and catch response
            StreamReader reader = new StreamReader(resp.GetResponseStream(), Encoding.ASCII);
            Console.WriteLine(reader.ReadToEnd()); //Write the contents of the response on screen
            Console.ReadLine();
        }
    }
}
