using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectronicHealthRecord
{
    public partial class myMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["patience"] != null)
            {
                welcomemsg.Text ="Καλώς ήλθες " + Session["patience"].ToString();
                logoutbtn.Visible = true;
                
            }
            else if(Session["doctor"]!=null)
            {
                welcomemsg.Text = "Καλώς ήλθατε " + Session["doctor"].ToString();
                logoutbtn.Visible = true;
                
            }
            else
            {
                welcomemsg.Text = " ";
            }
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("~/Home.aspx");
        }

        protected void aboutlink_Click(object sender, EventArgs e)
        {
            Response.Redirect("/About.aspx");
        }
    }
}