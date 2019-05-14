using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class test : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        cn.dr = cn.read("select * from Sign_UP where Reg_ID='" + Session["Reg_ID"].ToString() + "'");
        if(cn.dr.Read())
        {
            txtname.Text = cn.dr.GetValue(1).ToString();
           
        }
        cn.dr.Close();
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {

    }
}