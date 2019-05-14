using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Edit_shipping_add : System.Web.UI.Page
{
    Connect cn = new Connect();
    string address;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblprint.Visible = true;
        address = txtHname.Text.ToString() + " " + txtsreet.Text.ToString() + " " + txtpin.Text.ToString();
        cn.dml("update order_details set Ship_Address='" + address + "',PHN='" + txtphn.Text.ToString() + "',State='" + txtstate.Text.ToString() + "',District='" + txtdist.Text.ToString() + "',email='" + txtemail.Text.ToString() + "' where Reg_ID='" + Session["Reg_ID"] + "'");
        lblprint.Text = "Sucessfully Enter Shipping Address In Your New Address Book Entry";
        Response.Redirect("Delivery.aspx");
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtdist.Text = " ";
        txtemail.Text = " ";
        txtHname.Text = " ";
        txtphn.Text = "";
        txtpin.Text = "";
        txtsreet.Text = "";
        txtstate.Text = "";
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
}