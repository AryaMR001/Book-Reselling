using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Order_history : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        GridView1.DataSource = cn.fill("select b.Bok_Name,b.Author_Name,b.Price,o.Date,o.Status from Book_Data b,order_details o where b.Book_ID=o.Book_ID AND o.Reg_ID='" + Session["Reg_ID"].ToString() + "' AND o.Status!='NULL' ");
        GridView1.DataBind();
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}