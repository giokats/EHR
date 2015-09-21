using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace ElectronicHealthRecord
{
    public partial class Home : System.Web.UI.Page
    {
       
        MySqlConnection con;
        MySqlCommand com;
        MySqlDataReader reader;
        string querystr;
        string fname;
        string lname;
        //string name;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInAsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = Int32.Parse(LogInAsList.SelectedValue);
        }

        private void loginUser()
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "SELECT * FROM ehrdb.patience WHERE amka='" + amkatxt.Text + "'";
           
            com = new MySqlCommand(querystr, con);
            
            reader = com.ExecuteReader();
            
            if(reader.Read())
            {
                fname= reader["fName"].ToString();
                lname = reader["lName"].ToString();
                Session["patience"] = fname +" "+ lname;
                Response.Redirect("~/Patience/PatienceHistory.aspx?patAmka="+amkatxt.Text, false);
                con.Close();
            }
            else
            {
                wrongIdlbl1.Text = "Λάθος στοιχεία. Παρακαλώ δοκιμάστε ξανά.";
            }
           


        }

        private void loginAdmin()
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "SELECT * FROM ehrdb.doctor WHERE username='" + usernametxt.Text + "'AND password='"+passtxt.Text+"'";
            com = new MySqlCommand(querystr, con);

            reader = com.ExecuteReader();

            if(reader.Read())
            {
                Session["doctor"] = "Γιατρέ";
                Response.Redirect("~/Doctor/Patience.aspx", false);
                con.Close();
            }
            else
            {
                wrongIdlbl.Text = "Λάθος στοιχεία. Παρακαλώ δοκιμάστε ξανά.";
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            loginUser();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            loginAdmin();
        }
    }
}