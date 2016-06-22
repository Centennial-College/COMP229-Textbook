using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitButton_Click(Object s, EventArgs e)
    {
        if (Page.IsValid)
        {
            submitButton.Text = "Valid";
        }
        else
        {
            submitButton.Text = "Invalid!";
        }
    }
}