using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Project.Models;
using System.Data.SqlClient;
using System.Web.Configuration;
using Project;

namespace Project.Account
{
    public partial class Register : Page
    {
        protected void Page_Load()
        {
            Page.DataBind();
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

                string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);

                con.Open();

                string sql = "INSERT INTO Passengers (gname, surname, address, suburb, state, postcode, phone, email, username, dob, mealpref) VALUES (@Gname, @Surname, @Address, @Suburb, @State, @Postcode, @Phone, @Email, @Username, @Dob, @Mealpref)";
                SqlCommand cmd = new SqlCommand(sql, con);

                    cmd.Parameters.AddWithValue("@Gname", FirstName.Text);
                    cmd.Parameters.AddWithValue("@Surname", LastName.Text);
                    cmd.Parameters.AddWithValue("@Address", Address.Text);
                    cmd.Parameters.AddWithValue("@Suburb", Suburb.Text);
                    cmd.Parameters.AddWithValue("@State", State.Text);
                    cmd.Parameters.AddWithValue("@Postcode", Postcode.Text);
                    cmd.Parameters.AddWithValue("@Phone", Phone.Text);
                    cmd.Parameters.AddWithValue("@Email", Email.Text);
                    cmd.Parameters.AddWithValue("@Username", Email.Text);
                    cmd.Parameters.AddWithValue("@Dob", DOB.Text);
                    cmd.Parameters.AddWithValue("@Mealpref", MealPref.Text);
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    con.Close();
                
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}