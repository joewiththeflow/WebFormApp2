using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UserNameLocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LastNameTextBox.Focus();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                var fname = FirstNameTextBox.Text;
                var lname = LastNameTextBox.Text;
                var state = StatesDropDown.SelectedValue;
                OutputLabel.Text = fname + " " + lname + " " + state;
            }
        }
    }
}