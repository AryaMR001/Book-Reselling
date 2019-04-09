using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class View_profile : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
      
        DetailsView1.DataSource = cn.fill("select Name,Gender,Address,Phnnumber,State,District,Email_ID from Sign_UP where Reg_ID='"+ Session["Reg_ID"].ToString() + "' ");
        DetailsView1.DataBind();
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}