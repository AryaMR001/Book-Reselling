using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Change_password : System.Web.UI.Page
{
    Connect cn = new Connect();
    string pass;
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        cn.start();

        cn.dr = cn.read("select Password from Sign_UP where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        if(cn.dr.Read())
        {
            pass = cn.dr.GetValue(0).ToString();
           
        }
        cn.dr.Close();
       
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        if (pass == txtcpassword.Text.ToString())
        {
            cn.dml("update Sign_UP set Password='" + txtnewpassword.Text.ToString() + "' where Reg_ID='" + Session["Reg_ID"].ToString() + "' ");
            lblprint.Visible = true;
            lblprint.Text = "Sucessfully changed your password";
        }
        else
        {
            lblprint.Visible = true;
            lblprint.Text = "Your current password is not currect";
        }
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtcpassword.Text = "";
        txtnewcpassword.Text = "";
        txtnewpassword.Text = "";
    }
}