using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Quirks
{
    public class Global : System.Web.HttpApplication
    {

        
        protected void Application_Start(object sender, EventArgs e)
        {
            //this event is execute only once when application start and it stores the server memory until the worker process is restart  
            Application["user"] = 0;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            //when session in start application variable is increased by 1  
            Application.Lock();
            Application["user"] = (int)Application["user"] + 1;
            Application.UnLock();
        }
        protected void Session_End(object sender, EventArgs e)
        {
            //when session in end application variable is decrease by 1  
            Application.Lock();
            Application["user"] = (int)Application["user"] - 1;
            Application.UnLock();
        }

    }
}