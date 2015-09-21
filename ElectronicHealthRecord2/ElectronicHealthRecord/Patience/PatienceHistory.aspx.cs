using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Drawing;


namespace ElectronicHealthRecord
{
    public partial class PatienceHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void historyExaminationsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = Int32.Parse(historyExaminationsList.SelectedValue);
            //if (GridView2.Rows.Count != 0)
            //{
            //    Button2.Visible = true;
            //}
            //if (GridView1.Rows.Count != 0)
            //{
            //    Button1.Visible = true;
            //}
            //if (GridView3.Rows.Count != 0)
            //{
            //    Button3.Visible = true;
            //}
            //if (GridView4.Rows.Count != 0)
            //{
            //    Button4.Visible = true;
            //}
            //if (GridView5.Rows.Count != 0)
            //{
            //    Button5.Visible = true;
            //}
            //if (GridView6.Rows.Count != 0)
            //{
            //    Button6.Visible = true;
            //}
            //if (GridView7.Rows.Count != 0)
            //{
            //    Button7.Visible = true;
            //}
        }

       

     

    

     public override void VerifyRenderingInServerForm(Control control)
     {

     }

     protected void ExportToExcel1(object sender, EventArgs e)
     {

         Response.Clear();
         Response.AppendHeader("content-disposition", "attachment;filename=Γενική_ξέταση_Αίματος.xls");
         Response.Buffer = true;
         Response.Charset = "";
         Response.ContentType = "application/vnd.ms-excel";

         StringWriter sw = new StringWriter();
         HtmlTextWriter hw = new HtmlTextWriter(sw);

         GridView1.RenderControl(hw);

         string style = @"<style>.textmode{}</style>";
         Response.Write(style);
         Response.Output.Write(sw.ToString());
         Response.Flush();
         Response.End();
     }

     protected void ExportToExcel2(object sender, EventArgs e)
     {
         Response.Clear();
         Response.AppendHeader("content-disposition", "attachment;filename=ΒιταμίνηΒ12.xls");
         Response.Buffer = true;
         Response.Charset = "";
         Response.ContentType = "application/vnd.ms-excel";

         StringWriter sw = new StringWriter();
         HtmlTextWriter hw = new HtmlTextWriter(sw);

         GridView2.RenderControl(hw);

         string style = @"<style>.textmode{}</style>";
         Response.Write(style);
         Response.Output.Write(sw.ToString());
         Response.Flush();
         Response.End();
     }

     protected void ExportToExcel3(object sender, EventArgs e)
     {
         Response.Clear();
         Response.AppendHeader("content-disposition", "attachment;filename=Φεριττίνη.xls");
         Response.Buffer = true;
         Response.Charset = "";
         Response.ContentType = "application/vnd.ms-excel";

         StringWriter sw = new StringWriter();
         HtmlTextWriter hw = new HtmlTextWriter(sw);

         GridView3.RenderControl(hw);

         string style = @"<style>.textmode{}</style>";
         Response.Write(style);
         Response.Output.Write(sw.ToString());
         Response.Flush();
         Response.End();
     }

     protected void ExportToExcel4(object sender, EventArgs e)
     {
         Response.Clear();
         Response.AppendHeader("content-disposition", "attachment;filename=Φυλικό_Οξύ.xls");
         Response.Buffer = true;
         Response.Charset = "";
         Response.ContentType = "application/vnd.ms-excel";

         StringWriter sw = new StringWriter();
         HtmlTextWriter hw = new HtmlTextWriter(sw);

         GridView4.RenderControl(hw);

         string style = @"<style>.textmode{}</style>";
         Response.Write(style);
         Response.Output.Write(sw.ToString());
         Response.Flush();
         Response.End();
     }

     protected void ExportToExcel5(object sender, EventArgs e)
     {
         Response.Clear();
         Response.AppendHeader("content-disposition", "attachment;filename=Ηλεκτροφόρηση_Αιμοσφαιρίνης.xls");
         Response.Buffer = true;
         Response.Charset = "";
         Response.ContentType = "application/vnd.ms-excel";

         StringWriter sw = new StringWriter();
         HtmlTextWriter hw = new HtmlTextWriter(sw);

         GridView5.RenderControl(hw);

         string style = @"<style>.textmode{}</style>";
         Response.Write(style);
         Response.Output.Write(sw.ToString());
         Response.Flush();
         Response.End();
     }

     protected void ExportToExcel6(object sender, EventArgs e)
     {

         Response.Clear();
         Response.AppendHeader("content-disposition", "attachment;filename=Σίδηρος_Ορού.xls");
         Response.Buffer = true;
         Response.Charset = "";
         Response.ContentType = "application/vnd.ms-excel";

         StringWriter sw = new StringWriter();
         HtmlTextWriter hw = new HtmlTextWriter(sw);

         GridView6.RenderControl(hw);

         string style = @"<style>.textmode{}</style>";
         Response.Write(style);
         Response.Output.Write(sw.ToString());
         Response.Flush();
         Response.End();
     }

     protected void ExportToExcel7(object sender, EventArgs e)
     {

         Response.Clear();
         Response.AppendHeader("content-disposition", "attachment;filename=Οροαντίδραση_Coobs.xls");
         Response.Buffer = true;
         Response.Charset = "";
         Response.ContentType = "application/vnd.ms-excel";

         StringWriter sw = new StringWriter();
         HtmlTextWriter hw = new HtmlTextWriter(sw);

         GridView7.RenderControl(hw);

         string style = @"<style>.textmode{}</style>";
         Response.Write(style);
         Response.Output.Write(sw.ToString());
         Response.Flush();
         Response.End();
     }

     protected void Button8_Click(object sender, EventArgs e)
     {
         Response.Redirect("~/Doctor/Patience.aspx");
     }

    

     

    
    

       

       
        

        

       
    }
}