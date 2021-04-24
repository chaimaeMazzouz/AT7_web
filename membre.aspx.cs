using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AT7_TP
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.UrlReferrer == null)
                {
                    Server.Transfer("index.aspx");
                }
                else
                {
                    LblMesg.Text = $"Bienvenu {Request.QueryString["nom"]}  {Request.QueryString["prenom"]}";
                }

            }

           
        }
    }
}