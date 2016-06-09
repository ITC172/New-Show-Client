using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShowPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["key"]==null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
       {
        ServiceReference1.RegisterServiceClient sr1 = new ServiceReference1.RegisterServiceClient();
        ServiceReference1.Show v = new ServiceReference1.Show();
        ServiceReference1.ShowDetail vl = new ServiceReference1.ShowDetail();

        v.ShowName = ShowNameEntry.Text;
        v.VenueKey = (int)Session["key"];

        v.ShowDate = DateTime.Parse(ShowDateEntry.Text);
        v.ShowTime = TimeSpan.Parse(ShowTimeEntry.Text);
        v.ShowTicketInfo = ShowTicketInfoEntry.Text;
        v.ShowDateEntered = DateTime.Parse(ShowDateEnteredEntry.Text);

        bool result = sr1.AddShow(v, vl);
        if (result)
        {
            errorDisplay.Text = "Registered";

        }
        else
        {
            errorDisplay.Text = "Try again later";
        }


    
}
}