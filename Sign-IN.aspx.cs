using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Sign_IN : System.Web.UI.Page
{
    public int id;
    public string name;
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
       
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtPass.Text=="admin" && txtUname.Text=="admin" )
        {
            Response.Redirect("~/Home.aspx");
        }
        cn.dr = cn.read("select * from Sign_UP where User_Name='" + txtUname.Text + "'  AND  Password='" + txtPass.Text + "'");
        if(cn.dr.Read())
        {   id= Convert.ToInt32(cn.dr.GetValue(0).ToString());
            Session["Reg_ID"]=id;
            name = cn.dr.GetValue(1).ToString();
            Session["name"] = name;
            Response.Redirect("~/Home.aspx");

        }
        else
        {
            Label3.Visible = true;
            Label3.Text = "Invalid Username Or Password";
        }
        
    }

}