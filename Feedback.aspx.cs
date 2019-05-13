using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
public partial class Feedback : System.Web.UI.Page
{
    Connect cn = new Connect();
    string  category,feedback;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.start();
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if(rbtnawful.Checked)
        {
            feedback = "Awful";
        }
        if(rbtnnotgood.Checked)
        {
            feedback = "Not Good";
        }
        if(rbtnok.Checked)
        {
            feedback = "Not Good";
        }
        if(rbtnreallygood.Checked)
        {
            feedback = "Not Really good";
        }
        if(btnfentastic.Checked)
        {
            feedback = "fentastic";
        }
        /*for category*/
        if(rbtnsuggetion.Checked)
        {
            category = rbtnsuggetion.Text.ToString();
        }
        if(rbtnCompliment.Checked)
        {
            category = rbtnCompliment.Text.ToString();
        }
        if(rbtnwrong.Checked)
        {
            category = rbtnwrong.Text.ToString();
        }
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        cn.dml("insert into FeedBack(Reg_ID,Opinion,Category,Feedback)values('" + Session["Reg_ID"].ToString() + "','" + feedback + "','" + category + "','" + txtfeedback.Text + "')");
        lblprint.Visible = true;
        lblprint.Text = "Your Feedback Is SendSucessfully";
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
       
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
       
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
      
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        category= "Fantastic";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       category = "Something Quite Not Right";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        category = "Compliment";
    }
}