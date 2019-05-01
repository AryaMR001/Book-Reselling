using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Book_request : System.Web.UI.Page
{
    Connect cn = new Connect();
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        cn.start();
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        cn.dml("insert into Book_Request(Reg_ID,Book_Name,Author,Edition)values('" + Session["Reg_ID"].ToString() + "','" + txtBookname.Text.ToString() + "','" + txtAuthor.Text.ToString() + "','" + txtEdition.Text.ToString() + "')");
        Label5.Visible = true;
        
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtEdition.Text = "";
        txtBookname.Text = "";
        txtAuthor.Text = "";
    }
}