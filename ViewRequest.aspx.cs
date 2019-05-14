using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ViewRequest : System.Web.UI.Page
{
    Connect cn = new Connect();
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        Label1.Visible = true;
        cn.dr = cn.read("select count(Book_Name) from Book_Request where status IS NULL and Reg_ID !='" + Session["Reg_ID"] + "' ");
        if(cn.dr.Read())
        {
            count = Convert.ToInt32(cn.dr.GetValue(0).ToString());
        }
        cn.dr.Close();
        
        GridView1.DataSource = cn.fill("select Book_Name,Author,Edition from Book_Request where status IS NULL and Reg_ID !='"+Session["Reg_ID"]+"'");
        GridView1.DataBind();
        if (GridView1 == null)
        {
            Label1.Text = "You Have No Notification";
        }
        else
        {
            Label1.Text = "You Have"+" "+count+" "+"Notifications";
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void btnnotification_Click(object sender, EventArgs e)
    {
        cn.dml("update Book_Request set status='Read'");
        
    }

    protected void btnnotification_Click1(object sender, EventArgs e)
    {

    }

    protected void btnread_Click(object sender, EventArgs e)
    {
        cn.dml("update Book_Request set status='Read'");
    }
}