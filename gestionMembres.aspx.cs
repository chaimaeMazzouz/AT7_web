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
    public partial class WebForm5 : System.Web.UI.Page
    {
        static  SqlConnection cn_ComVoyage = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        SqlCommand cmd = new SqlCommand("", cn_ComVoyage);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cmd.CommandText = "select pseudo from membre";
                cn_ComVoyage.Open();
                DdlPseudo.DataSource = cmd.ExecuteReader();
                DdlPseudo.DataTextField = "pseudo";
                DdlPseudo.DataBind();
                DdlPseudo.Items.Insert(0, "--Fait un choix--");
                DdlPseudo.SelectedIndex = 0;
                cn_ComVoyage.Close();
            }
        }

        protected void DdlPseudo_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmd.CommandText = "select*From membre where pseudo = @pseudo";
            cmd.Parameters.AddWithValue("@pseudo",DdlPseudo.SelectedValue) ;
            cn_ComVoyage.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
              
                TbMatricule.Text = dr[2].ToString();
                TbNom.Text = dr[3].ToString();
                TbPrenom.Text = dr[4].ToString();
                dDLService.Text = dr[5].ToString();
                TbEmail.Text = dr[6].ToString();
                dDLCategorie.Text = dr[7].ToString();
            }
            cn_ComVoyage.Close();
        }

        protected void BtnModifier_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Update membre set pass=@pass,matricule=@mat,nom=@nom,prenom=@prenom,service_=@service,mail=@mail,categorie=@cat where pseudo=@pseudo";
            cn_ComVoyage.Open();
            try
            {
                
                cmd.Parameters.AddWithValue("@pass", TbPassword.Text);
                cmd.Parameters.AddWithValue("@mat", TbMatricule.Text);
                cmd.Parameters.AddWithValue("@nom", TbNom.Text);
                cmd.Parameters.AddWithValue("@prenom", TbPrenom.Text);
                cmd.Parameters.AddWithValue("@service", dDLService.Text);
                cmd.Parameters.AddWithValue("@mail", TbEmail.Text);
                cmd.Parameters.AddWithValue("@cat", dDLCategorie.Text);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Modification effectué')</script>");
                DdlPseudo.SelectedIndex = dDLService.SelectedIndex= dDLCategorie.SelectedIndex= 0;
                TbPassword.Text = TbMatricule.Text = TbNom.Text = TbPrenom.Text = TbEmail.Text = "";

            }catch(Exception ex)
            {
                Response.Write("<script>alert('Modification impossible')</script>");
            }
            cn_ComVoyage.Close();
        }
    }
}