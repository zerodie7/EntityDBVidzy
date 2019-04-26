using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vidzy;

namespace DbVidzy
{
    class Program
    {
        static void Main(string[] args)
        {
            var dbCont = new VidzyDbCont();
            dbCont.AddVideo("Kill la kill", DateTime.Today, "Family", (byte)Classification.Gold);
            dbCont.AddVideo("Kill Bill 2", DateTime.Today, "Comedy", (byte)Classification.Platinum);
            dbCont.AddVideo("Kill Bill 3", DateTime.Today, "Romance", (byte)Classification.Silver);

            Console.WriteLine("Fin");
        }
    }
}

