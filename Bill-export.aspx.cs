using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Bill_export : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        cn.dr = cn.read("select Order_ID,Date from order_details where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        if (cn.dr.Read())
        {
            lblid.Text = cn.dr.GetValue(0).ToString();
            lblbdate.Text = cn.dr.GetValue(1).ToString();
        }
       
        lblsub.Text = Session["Sub_tot"].ToString();
        lblship.Text = Session["Ship_Cost"].ToString();
        lblgrand.Text = Session["Grand_tot"].ToString();
        lbldeb.Text= Session["Grand_tot"].ToString();
        lblbalance.Text = Session["new_balance"].ToString();
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AppendHeader("Content-Disposition", "attachment; filename=MyFile.pdf");
        Response.TransmitFile(Server.MapPath("~/File/MyFile.pdf"));
        Response.End();
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }
}