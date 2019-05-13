using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;



public partial class BookData : System.Web.UI.Page
{
    Connect cn = new Connect();
    public string filename, src, src1, ext, ID;
    int id, count;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Session["Reg_ID"]);
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        cn.start();
        
    }
    public void id_gen()
    {
        
            cn.dr = cn.read("select count(Bok_Name)from Book_Data");
            if (cn.dr.Read())
            {
                count = Convert.ToInt32(cn.dr.GetValue(0).ToString());
                count = count + 1;
            }
            cn.dr.Close();
            ID = "Book" + count;
        }
       
    

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtPages_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtbook_Click(object sender, EventArgs e)
    {
        cn.dml("insert into Book_Data(Reg_ID,Bok_Name,Author_Name,Edition,Category,Publication,Price,Quantity,Condition,Page_NO,Book_Image)values('" + Session["Reg_ID"].ToString() + "','" + txtBookname.Text.ToString() + "','" + txtOtherauthor.Text.ToString() + "','" + txtEdition.Text.ToString() + "','" +ddlcategory.SelectedValue.ToString() + "','" + txtOtherpublication.Text.ToString() + "','" + txtPrice.Text.ToString() + "','" + txtQnty.Text.ToString() + "','" + ddlCondition.SelectedValue.ToString() + "','" + txtPages.Text.ToString() + "','" + Session["photo"].ToString() + "')");
        Response.Write("<script>alert('Sucessfully Completed');window.location='Home.aspx';</script>");
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        id_gen();
        filename = Path.GetFileName(FileUpload.PostedFile.FileName);
        ext = Path.GetExtension(filename);
        if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
        {
            src = Server.MapPath("images") + "/"+ID+ ".JPG";
            FileUpload.PostedFile.SaveAs(src);
            src1 = "~/images/"+ ID+".JPG";
            Image1.ImageUrl = src1;
            Session["photo"] = src1;
        }
        else
        {
            Response.Write("Please Select An Image File....");
        }
    }

   
}