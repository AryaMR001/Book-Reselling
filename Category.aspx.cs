using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlTypes;
public partial class Category : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        Label1.Text = "Books In Category"+ " "+ Session["category"].ToString();
        DataList1.Visible = true;
        DataList1.DataSource = cn.fill("select  Bok_Name,Book_Image,Price from Book_Data where Category='"+ Session["category"] .ToString()+ "'");
        DataList1.DataBind();
    }
}