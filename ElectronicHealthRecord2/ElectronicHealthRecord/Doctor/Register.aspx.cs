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
    public partial class Register : System.Web.UI.Page
    {
       MySqlConnection con;
       MySqlCommand com;
       string querystr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {

        }

        protected void registerEventMethod(object sender, EventArgs e)
        {
           
                registerUser();

                Response.Redirect("Patience.aspx");
        }
        private void registerUser()
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "INSERT INTO ehrdb.patience (amka,fName,lName,fatherName,motherName,tel1,tel2,address,num,area,city,postcode,age,job) VALUES('" + amkatxt.Text + "','" + fnametxt.Text + "','" + lnametxt.Text + "','" + fathernametxt.Text + "','" + mothernametxt.Text + "','" + tel1txt.Text + "','" + tel2txt.Text + "','" + roadtxt.Text + "','" + numtxt.Text + "','" + areatxt.Text + "','" + citytxt.Text + "','" + tktxt.Text + "','" + agetxt.Text + "','" + jobtxt.Text + "')";
            com = new MySqlCommand(querystr, con);
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctor/Patience.aspx");
        }
    }
}