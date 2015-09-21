using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace ElectronicHealthRecord
{
    public partial class Sesults : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
            }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = Int32.Parse(DropDownList1.SelectedValue);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctor/Patience.aspx");
        }

       


       
        

        }
    }
