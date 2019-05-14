using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_vieworder : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        GridView1.DataSource = cn.fill("select b.Bok_Name,b.Price,s.Reg_ID ,o.Reg_ID  from Book_Data b,Sign_UP s,order_details o where o.Book_ID=b.Book_ID AND b.Reg_ID=o.Reg_ID");
        GridView1.DataBind();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       /* ddlsellerid.Visible = true;
        if (!IsPostBack)
        {
            ddlsellerid.Items.Clear();
            ddlsellerid.Items.Add("ID");
            cn.dr = cn.read("select DISTINCT o.Reg_ID  from order_details o, Book_Data b where b.Book_ID=o.Book_ID AND b.Reg_ID='" + Session["Reg_ID"].ToString() + "'");
            while (cn.dr.Read())
            {
                ddlsellerid.Items.Add(cn.dr.GetValue(0).ToString());

            }
            cn.dr.Close();
        }*/
    }
}