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
    public partial class AddExaminations : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand com;
        string querystr;
        protected void Page_Load(object sender, EventArgs e)
        {
            amkafbctxt.Text = Request.QueryString["patAmka"];
            amkab12txt.Text = Request.QueryString["patAmka"];
            amkaelectrtxt.Text = Request.QueryString["patAmka"];
            amkafertxt.Text = Request.QueryString["patAmka"];
            amkafolictxt.Text = Request.QueryString["patAmka"];
            amkainterptxt.Text = Request.QueryString["patAmka"];
            amkairontxt.Text = Request.QueryString["patAmka"];
        }

        protected void fbcbtn_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "INSERT INTO ehrdb.fullbloodcount (amka,wbc,rbc,hb,hct,mcv,mvh,plt,mpv,date) VALUES('" + amkafbctxt.Text + "','" + wbctxt.Text + "','" + rbctxt.Text + "','" + hbtxt.Text + "','" + hcttxt.Text + "','" + mcvtxt.Text + "','" + mchtxt.Text + "','" + plttxt.Text + "','" + mpvtxt.Text + "','" + fcbcal.SelectedDate.ToShortDateString() + "')";
            com = new MySqlCommand(querystr, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SuccessfullAdding.aspx", false);
        }

        protected void b12btn_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "INSERT INTO ehrdb.vitamineb12 (amka,level,date) VALUES('" + amkab12txt.Text + "','" + b12txt.Text + "','"+ b12cal.SelectedDate.ToShortDateString()+"')";
            com = new MySqlCommand(querystr, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SuccessfullAdding.aspx", false);
        }

        

        protected void ExaminationList_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = Int32.Parse(ExaminationList.SelectedValue);
        }

        protected void ferbtn_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "INSERT INTO ehrdb.ferritin (amka,sex,level,date) VALUES('" + amkafertxt.Text + "','" + ferSexList.SelectedItem.ToString() + "','" + fertxt.Text + "','" + fercal.SelectedDate.ToShortDateString() + "')";
            com = new MySqlCommand(querystr, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SuccessfullAdding.aspx", false);
        }

        protected void folicbtn_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "INSERT INTO ehrdb.folicacid (amka,level,date) VALUES('" + amkafolictxt.Text + "','" + folictxt.Text + "','" + foliccal.SelectedDate.ToShortDateString() + "')";
            com = new MySqlCommand(querystr, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SuccessfullAdding.aspx", false);
        }

        protected void electrbtn_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "INSERT INTO ehrdb.haemoglobin_electrophoresis (amka,level,date) VALUES('" + amkaelectrtxt.Text + "','" + electtxt.Text + "','" + electrcal.SelectedDate.ToShortDateString() + "')";
            com = new MySqlCommand(querystr, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SuccessfullAdding.aspx", false);
        }

        protected void ironbtn_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "INSERT INTO ehrdb.iron (amka,sex,level,date) VALUES('" + amkairontxt.Text + "','" + ironSexList.SelectedItem.ToString() + "','" + irontxt.Text + "','" + ironcal.SelectedDate.ToShortDateString() + "')";
            com = new MySqlCommand(querystr, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SuccessfullAdding.aspx", false);
        }

        protected void interpbtn_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["MySqlMembershipConnection"].ToString();
            con = new MySqlConnection(constr);
            con.Open();
            querystr = "INSERT INTO ehrdb.interpretation_coobs (amka,result,date) VALUES('" + amkainterptxt.Text + "','" + interptxt.Text + "','" + interpcal.SelectedDate.ToShortDateString() + "')";
            com = new MySqlCommand(querystr, con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("SuccessfullAdding.aspx", false);
        }

       

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctor/Patience.aspx");
        }

       

       

       

      
    }
}