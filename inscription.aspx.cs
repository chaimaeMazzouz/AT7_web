using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AT7_TP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn_ComVoyage = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd_ajout = new SqlCommand("insert into membre values(@pseudo,@pass,@mat,@nom,@prenom,@service,@mail,@cat)",cn_ComVoyage);
            cmd_ajout.Parameters.AddWithValue("@pseudo",TbPseudo.Text);
            cmd_ajout.Parameters.AddWithValue("@pass", TbPassword.Text);
            cmd_ajout.Parameters.AddWithValue("@mat", TbMatricule.Text);
            cmd_ajout.Parameters.AddWithValue("@nom", TbNom.Text);
            cmd_ajout.Parameters.AddWithValue("@prenom", TbPrenom.Text);
            cmd_ajout.Parameters.AddWithValue("@service", dDLService.Text);
            cmd_ajout.Parameters.AddWithValue("@mail", TbEmail.Text);
            cmd_ajout.Parameters.AddWithValue("@cat", dDLCategorie.Text);
            if(Page.IsValid)
            {
                cn_ComVoyage.Open();
                cmd_ajout.ExecuteNonQuery();
                cn_ComVoyage.Close();
                Response.Write("<script>alert('Ajout effectué')</script>");
                Response.Redirect($"membre.aspx?nom={TbNom.Text}&prenom={TbPrenom.Text}");
            }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            SqlCommand cmd_pseudo = new SqlCommand("Select count(*) from membre where pseudo=@numPs");
            cmd_pseudo.Connection = cn_ComVoyage;
            SqlParameter pnum = new SqlParameter("@numPs", SqlDbType.VarChar);
            cmd_pseudo.Parameters.Add(pnum);
            pnum.Value = args.Value.ToString();
            cn_ComVoyage.Open();
            int nbre = (int)cmd_pseudo.ExecuteScalar();
            if (nbre != 0)
                args.IsValid = false;
            else
                args.IsValid = true;
            cn_ComVoyage.Close();

        }
    }
}