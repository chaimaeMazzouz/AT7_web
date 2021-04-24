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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn_ComVoyage = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select *from membre", cn_ComVoyage);
            cn_ComVoyage.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            cn_ComVoyage.Close();

        }
    }
}