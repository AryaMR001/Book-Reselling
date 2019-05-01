using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Delivery_update : System.Web.UI.Page
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
        cn.dml("update Sign_UP set Address='"+address+ "',Phnnumber='"+txtphn.Text.ToString()+ "',State='"+txtstate.Text.ToString()+ "',District='"+txtdist.Text.ToString()+ "',Email_ID='"+txtemail.Text.ToString()+"' where Reg_ID='"+ Session["Reg_ID"] + "'");
        lblprint.Text = "Sucessfully Enter In Your New Address Book Entry";
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
}