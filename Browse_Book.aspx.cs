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
        DataList1.DataSource = cn.fill("select Bok_Name,Author_Name,Edition,Category,Publication,Price,Condition,Page_NO,Book_Image from Book_Data where Bok_Name like '" + Session["search"].ToString() + "%' or Author_Name like '" + Session["search"].ToString() + "%' or Condition like '" + Session["search"].ToString() + "%'");
        DataList1.DataBind();
    }
}