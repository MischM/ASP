using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckPrime(Object o, ServerValidateEventArgs e)
        {
            var number = Convert.ToInt32(e.Value);
            if (number == 1)
            {
                e.IsValid = false;
                return;
            }
            if (number == 2)
            {
                e.IsValid = true;
                return;
            }
            if (number % 2 == 0)
            {
                e.IsValid = false; //Even number     
                return;
            }
            for (int i = 3; i < number; i += 2)
            {
                if (number % i == 0)
                {
                    e.IsValid =  false;
                    return;
                }
            }
        }

        protected void CheckUsername(object source, ServerValidateEventArgs args)
        {
            var name = args.Value;
            if (name.Length < 5)
            {
                args.IsValid = false;
                return;
            }
        }
    }
}