using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpeedySitter1
{
    class SSmain
    {
        static void Main(string[] args)
        {
            try
            {
                Console.WriteLine("Sppedy Sitter Framework Running");

                Console.WriteLine("\nPlease press any key to exit!");
                Console.ReadKey();
            }
            catch (Exception e)
            {
                Console.WriteLine("Exception caught in Main program", e);
                Console.WriteLine("\n Please press any key to exit!");
                Console.ReadKey();
                Environment.Exit(0);
            }
        }
    }
}
