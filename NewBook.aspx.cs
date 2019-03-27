using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class NewBook : System.Web.UI.Page
{
    Connect cn = new Connect();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        DataList1.DataSource=cn.fill("select Bok_Name,Book_Image,Price from Book_Data");
        DataList1.DataBind();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}