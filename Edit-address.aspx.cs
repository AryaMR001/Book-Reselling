using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Edit_address : System.Web.UI.Page
{
    Connect cn = new Connect();
    string Address;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        cn.start();

    }

    protected void btncomp_Click(object sender, EventArgs e)
    {
        Address= txthname.Text.ToString() + " " + txtstreet.Text.ToString() + "" + txtzipcode.Text.ToString();
        cn.dml("update Sign_UP set Address='" + Address + "' where Reg_ID='"+Session["Reg_ID"] +"'");
        Label4.Visible = true;
        Label4.Text = "Sucessfully change your address";
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtzipcode.Text = "";
        txtstreet.Text = "";
        txthname.Text = "";
    }
}