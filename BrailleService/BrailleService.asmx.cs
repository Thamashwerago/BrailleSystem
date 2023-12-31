﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using static System.Net.Mime.MediaTypeNames;

namespace BrailleService
{
    /// <summary>
    /// Summary description for BrailleService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class BrailleService : System.Web.Services.WebService
    {


        [WebMethod(EnableSession = true)]
        public double CalculateRectangleArea(double hight, double width)
        {
            int dotCount = (int)(hight * width);

            List<string> calculations;

            if (Session["Calculations"] == null)
            {
                calculations = new List<string>();
            }
            else
            {
                calculations = (List<string>)Session["Calculations"];
            }

            string strRecentCalculation = $"Required ink for a rectangle:{dotCount} units of ink, Dot Count:  {dotCount} dots, ";
            calculations.Add(strRecentCalculation);
            Session["Calculations"] = calculations;

            return dotCount;

        }


        [WebMethod(EnableSession = true)]
        public double CalculateCircleArea(double radius)
        {

            double area = Math.PI * radius * radius;
            int dotCount = (int)Math.Round(area); // Assuming 1 unit of ink per square unit

            List<string> calculations;

            if (Session["Calculations"] == null)
            {
                calculations = new List<string>();
            }
            else
            {
                calculations = (List<string>)Session["Calculations"];
            }

            string strRecentCalculation = $"Required ink for a circle: {dotCount} units of ink, Dot Count: {dotCount} dots";
            calculations.Add(strRecentCalculation);
            Session["Calculations"] = calculations;

            return dotCount;
        }

        [WebMethod(EnableSession = true)]
        public double CalculateTriangleArea(double baseLength, double height)
        {

            double area = 0.5 * baseLength * height;
            int dotCount = (int)Math.Round(area); // Assuming 1 unit of ink per square unit

            List<string> calculations;

            if (Session["Calculations"] == null)
            {
                calculations = new List<string>();
            }
            else
            {
                calculations = (List<string>)Session["Calculations"];
            }

            string strRecentCalculation = $"Required ink for a triangle: {dotCount} units of ink, Dot Count: {dotCount} dots";
            calculations.Add(strRecentCalculation);
            Session["Calculations"] = calculations;

            return dotCount;
        }

        [WebMethod(EnableSession = true)]
        public List<string> GetCalculations()
        {
            if (Session["Calculations"] == null)
            {
                List<string> calculations = new List<string>();
                calculations.Add("You haven't performed any calculations yet");
                return calculations;
            }
            else
            {
                return (List<string>)Session["Calculations"];
            }
        }



        [WebMethod]

        //convert A-Z characters to Braille
        public string ConvertToBraille(string text)
        {
            string braille = "";
            foreach (char c in text)
            {
                if (c == 'A')
                {
                    braille += "⠃";
                }
                else if (c == 'B')
                {
                    braille += "⠉";
                }
                else if (c == 'C')
                {
                    braille += "⠙";
                }
                else if (c == 'D')
                {
                    braille += "⠑";
                }
                else if (c == 'E')
                {
                    braille += "⠋";
                }
                else if (c == 'F')
                {
                    braille += "⠛";
                }
                else if (c == 'G')
                {
                    braille += "⠓";
                }
                else if (c == 'H')
                {
                    braille += "⠊";
                }
                else if (c == 'I')
                {
                    braille += "⠚";
                }
                else if (c == 'J')
                {
                    braille += "⠆";
                }
                else if (c == 'K')
                {
                    braille += "⠅";
                }
                else if (c == 'L')
                {
                    braille += "⠇";
                }
                else if (c == 'M')
                {
                    braille += "⠍";
                }
                else if (c == 'N')
                {
                    braille += "⠝";
                }
                else if (c == 'O')
                {
                    braille += "⠕";
                }
                else if (c == 'P')
                {
                    braille += "⠏";
                }
                else if (c == 'Q')
                {
                    braille += "⠟";
                }
                else if (c == 'R')
                {
                    braille += "⠗";
                }
                else if (c == 'S')
                {
                    braille += "⠎";
                }
                else if (c == 'T')
                {
                    braille += "⠞";
                }
                else if (c == 'U')
                {
                    braille += "⠥";
                }
                else if (c == 'V')
                {
                    braille += "⠧";
                }
                else if (c == 'W')
                {
                    braille += "⠺";
                }
                else if (c == 'X')
                {
                    braille += "⠭";
                }
                else if (c == 'Y')
                {
                    braille += "⠽";
                }
                else if (c == 'Z')
                {
                    braille += "⠵";
                }
                else
                {
                    braille += c;
                }



            }

            return braille;
        }







    }


}
