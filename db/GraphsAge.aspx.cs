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
    public partial class GraphsAge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class clsData
        {
            public String Ageabove18 { get; set; }
            public String Ageabove30 { get; set; }
            public String Ageabove40 { get; set; }
            public String Ageabove50 { get; set; }
            

        }

        [System.Web.Services.WebMethod()]
        public static clsData[] getData()
        {
            string qry1 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.age >= 18 && userinfo.age < 30 ";

            string qry2 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.age >= 30 && userinfo.age < 40 ";
            string qry3 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.age >= 40 && userinfo.age < 50 ";
            string qry4 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.age >= 50 && userinfo.age <= 60 ";

            List<clsData> details = new List<clsData>();
            clsData log = new clsData();
            for (int i = 0; i < 4; i++)
            {
                string Q = "";
                if (i==0)
               Q  = qry1;
                if (i == 1)
                    Q = qry2;
                if (i == 2)
                    Q = qry3;
                if (i == 3)
                    Q = qry4;
                string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                DataSet ds = new DataSet();
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand(Q))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                        da.Fill(ds);

                        foreach (DataRow dtrow in ds.Tables[0].Rows)
                        {
                            if(i==0)
                            log.Ageabove18 = dtrow["Count(password)"].ToString();
                            if (i==1)
                                log.Ageabove30 = dtrow["Count(password)"].ToString();
                            if (i == 2)
                                log.Ageabove40 = dtrow["Count(password)"].ToString();
                            if (i == 3)
                                log.Ageabove50 = dtrow["Count(password)"].ToString();

                        }
                        con.Close();

                        details.Add(log);
                    }
                }
            }
                return details.ToArray();
                
            }
        }

    }
