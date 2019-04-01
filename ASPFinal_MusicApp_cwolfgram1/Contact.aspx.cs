using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFinal_MusicApp_cwolfgram1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_click(object sender, EventArgs e)
        {
            //Shows sent message
            form.Visible = false;
            sentMessage.InnerText = "Message successfully sent!";
        }
    }
}