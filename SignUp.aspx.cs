using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        cn.start();
    }
    string Address, g,Fullname;
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        if(rdbtnFemale.Checked)
        {
            g = rdbtnFemale.Text.ToString();
        }
        else
        {
            g = rdbtnMale.Text.ToString();
        }
        Address = txtHname.Text.ToString() + " " + txtSname.Text.ToString() + "" + txtPin.Text.ToString();
        Fullname = txtName.Text.ToString() + "" + txtLastName.Text.ToString();
        cn.dml("insert into Sign_UP(Name,Gender,Address,Phnnumber,State,District,Email_ID,User_Name,Password)values('" + Fullname + "','" + g + "','" + Address + "','" + txtMobno.Text.ToString() + "','" + ddlstate.SelectedValue.ToString() + "','" + ddlstate.SelectedValue.ToString() + "','" + txtemail.Text.ToString() + "','" + txtxUname.Text.ToString() + "','" + txtPassword.Text.ToString() + "')");
        Response.Write("<script>alert('Your Registration Is Sucessfully Completed');window.location='HomePage.aspx';</script>");
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtemail.Text = string.Empty;
    }
}