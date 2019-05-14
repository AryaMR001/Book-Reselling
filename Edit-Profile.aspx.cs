using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Edit_Profile : System.Web.UI.Page
{
    Connect cn = new Connect();
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        cn.dr = cn.read("select Name,Gender,Address,Phnnumber,State,District,Email_ID from Sign_UP where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        if (cn.dr.Read())
        {
            txtname.Text = cn.dr.GetValue(0).ToString();
            txtgender.Text= cn.dr.GetValue(1).ToString();
            txtaddress.Text= cn.dr.GetValue(2).ToString();
            txtphn.Text= cn.dr.GetValue(3).ToString();
            txtstate.Text= cn.dr.GetValue(4).ToString();
            s = txtstate.Text;
            txtdist.Text= cn.dr.GetValue(5).ToString();
            txtemail.Text= cn.dr.GetValue(6).ToString();


        }
        cn.dr.Close();
    }
    
    protected void btnedit_Click(object sender, EventArgs e)
    { /*  if (s!= txtstate.Text)
        {
            Label11.Visible = true;
            Label11.Text = txtstate.Text;*/
        //}
        
       // cn.dml("update Sign_UP set Address='" + txtaddress.Text + "',Phnnumber='" + txtphn.Text + "', State='" + txtstate.Text + "',District='" + txtdist.Text + "',Email_ID='" + txtemail.Text + "' where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        txtaddress.Text = "";
        txtdist.Text = "";
        txtstate.Text = "";
        txtemail.Text = "";
        txtphn.Text = "";
    }

    protected void txtphn_TextChanged(object sender, EventArgs e)
    {
        Label11.Visible = true;
        Label11.Text = txtstate.Text;
    }
}