/* persistent class type that holds the basic data of all users of the system */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpeedySitter1
{
    abstract class AllUser 
    {
        string name;
        string userName;
        string password;
        string status;
        string email;
        string contact;
        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }
 
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
       
        public string Status
        {
            get { return status; }
            set { status = value; }
        }
        
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        
        public string Contact
        {
            get { return contact; }
            set { contact = value; }
        }

    }
}
