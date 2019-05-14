using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sales_Status : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        if (!IsPostBack)
        {
            PopulateReport();
        }
    }
    private void PopulateReport()
    {
        Chart1.DataSource = cn.fill("select b.Bok_Name,count(a.Book_ID) as count from Book_Data b,Add_Cart a where a.Book_ID=b.Book_ID AND b.Reg_ID='" + Session["Reg_ID"].ToString() + "' group by b.Bok_Name order by count(a.Book_ID) DESC");
        Chart1.DataBind();
    }
    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
}