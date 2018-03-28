using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data.OleDb;
using ADOX;
using ADODB;

using db;
namespace db
{
    public partial class AdminSignupaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static bool CheckAdminData()
        {
            string qry = "select * from AdminInfo";

            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            DataSet ds = new DataSet();

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(qry))
                {
                    //List<ListItem> listData = new List<ListItem>();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(ds);

                    foreach (DataRow dtrow in ds.Tables[0].Rows)
                    {
                        String pass = dtrow["password"].ToString();
                        String name = dtrow["username"].ToString();
                        if (name.Equals("") && pass.Equals(""))
                            return true;
                        else
                            return false;
                    }
                    con.Close();

                    //      return details.ToArray();

                }

            }
            return false;
        }


      
        [System.Web.Services.WebMethod()]
        public static bool saveAdminData(string password, string username, String age, String occupation, String income)
        {
            bool check = CheckAdminData();
            if (check == true)
            {
                bool returnValue = false;
                string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("insert into AdminInfo values('" + password + "','" + username + "', '" + age + "', '" + occupation + "', '" + income + "')", con))
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
            else
            {

             

                return false;
            }

        }

    }

}