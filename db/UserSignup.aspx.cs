using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace db
{
    public partial class UserSignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod()]
        public static bool saveUserData(string password, string username, String age,String gender, String occupation, String income)
        {
            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("insert into UserInfo values('" + password + "','" + username + "', '" + age + "', '" + gender + "', '" + occupation + "', '" + income + "')", con))
                {

                    cmd.Connection = con;
                    con.Open();

                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        returnValue = true;
                    }
                    else //error
                    {
                        return false;

                    }
                    con.Close();
                }
            }
            return returnValue;
        }

    }
}