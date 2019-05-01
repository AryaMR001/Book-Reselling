using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Delivery : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        cn.dr = cn.read("select Address,State,District,Phnnumber,Email_ID from Sign_UP where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        if(cn.dr.Read())
        {
            lbladdress.Text = cn.dr.GetValue(0).ToString();
            lblstate.Text = cn.dr.GetValue(1).ToString();
            lbldist.Text = cn.dr.GetValue(2).ToString();
            lblphn.Text = cn.dr.GetValue(3).ToString();
            lblemail.Text = cn.dr.GetValue(4).ToString();
        }
    }

    protected void btncontinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment-method.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delivery_update.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Payment-method.aspx");
    }
}