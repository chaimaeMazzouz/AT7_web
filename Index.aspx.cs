using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AT7_TP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAuthentifier_Click(object sender, EventArgs e)
        {
           if(TextPseudo.Text!="" && TextPass.Text != "") 
            {
                using (SqlConnection cn_ComVoyage = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
                {
                    cn_ComVoyage.Open();
                    string Qr = "select count(1) from membre where pseudo=@pseudo and pass=@pass";
                    SqlCommand cmd = new SqlCommand(Qr, cn_ComVoyage);
                    cmd.Parameters.AddWithValue("@pseudo", TextPseudo.Text);
                    cmd.Parameters.AddWithValue("@pass", TextPass.Text);

                    int count = (int)cmd.ExecuteScalar();
                    if (count == 1)
                    {
                        Session["pseudo"] = TextPseudo.Text;
                        Session["pass"] = TextPass.Text;
                        Response.Redirect("membre.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Ce membre n'exsist pas')</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Remplire les champs')</script>");
            }
           
        }
    }
}