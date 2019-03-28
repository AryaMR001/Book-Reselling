using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Browse_Book : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        DataList1.DataSource = cn.fill("select Bok_Name,Author_Name,Edition,Category,Publication,Price,Condition,Page_NO,Book_Image from Book_Data where Bok_Name like '" + Session["search"].ToString() + "%' or Author_Name like '" + Session["search"].ToString() + "%' or Condition like '" + Session["search"].ToString() + "%' or Publication like '" + Session["search"].ToString() + "%'");
        DataList1.DataBind();
        if (DataList1 == null || DataList1.Items.Count == 0)
        {
            Label2.Visible = true;
            Label2.Text = " Sorry this book is not available...You can requset wanted book to sellers";
            
        }
           
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}