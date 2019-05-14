using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Edit_email : System.Web.UI.Page
{
    Connect cn = new Connect();

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        cn.start();
    }

    protected void btncomplete_Click(object sender, EventArgs e)
    {
        cn.dml("update Sign_UP set Email_ID='" + txtemail.Text.ToString() + "' where  Reg_ID='" + Session["Reg_ID"] + "'");
        lblprint.Visible = true;
        lblprint.Text = "Sucessfully edit your email id";
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtemail.Text = "";
    }
}