using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using db;
namespace db
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        [System.Web.Services.WebMethod()]
        public static bool saveData(string idStudent, string FirstName, string LastName)
        {
            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("insert into student values('" + idStudent + "','" + FirstName + "', '" + LastName + "')", con))
                {
                    cmd.Connection = con;
                    con.Open();

                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        returnValue = true;
                    }
                    else //error
                    { }
                    con.Close();
                }
            }
            return returnValue;
        }



        [System.Web.Services.WebMethod()]
        public static clsData[] getData()
        {
            string qry = "select * from student";

            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            DataSet ds = new DataSet();
            List<clsData> details = new List<clsData>();
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand(qry))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(ds);

                    foreach (DataRow dtrow in ds.Tables[0].Rows)
                    {
                        clsData log = new clsData();
                        log.id = Convert.ToInt32(dtrow["idStudent"]);
                        log.FirstName = dtrow["FirstName"].ToString();
                        log.LastName = dtrow["LastName"].ToString();
                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }

        public class clsData
        {
            public int id { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
        }


    }

}
