using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace Ride4Bonim_Donations
{
    public partial class latest_donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string getUpdates()
        {
            using (var wc = new WebClient())
                return wc.DownloadString("https://ride4bonim.org.uk/feeds/latest-donations.php");
        }
    }
}