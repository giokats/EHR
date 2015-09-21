using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace ElectronicHealthRecord
{
    public partial class Patience : System.Web.UI.Page
    {
        


      

        protected void Page_Load(object sender, EventArgs e)
        {
        
           
        }

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "examinationsHistory")
            {
                Response.Redirect("~/Patience/PatienceHistory.aspx?patAmka=" + e.CommandArgument);
            }
            else if(e.CommandName=="AddExamination")
            {
                Response.Redirect("~/Doctor/AddExaminations.aspx?patAmka=" + e.CommandArgument);
            }
        }

        protected void addPatience_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctor/Register.aspx",false);
        }

        protected void Statistics_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctor/Results.aspx", false);
        }
       
        }
    }
