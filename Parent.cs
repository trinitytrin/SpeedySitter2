using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpeedySitter1
{
    class Parent : AllUser, IAllUser, IParent
    {
        void IAllUser.Login()
        {
            throw new NotImplementedException();
        }

        void IAllUser.Logout()
        {
            throw new NotImplementedException();
        }

        void IAllUser.ShowUI()
        {
            throw new NotImplementedException();
        }
    }
}
