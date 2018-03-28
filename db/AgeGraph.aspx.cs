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
    public partial class AgeGraph : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class clsData
        {
            public string gender { get; set; }
            public string Age { get; set; }
            public string occ { get; set; }
            public string inc { get; set; }

           // public string survey { get; set; }

            public string q1 { get; set; }
            public string q2 { get; set; }
            public string q3 { get; set; }
            public string q4 { get; set; }
            public string q5 { get; set; }
            public string q6 { get; set; }
            public string q7 { get; set; }
            public string q8 { get; set; }
            public string q9 { get; set; }
            public string q10 { get; set; }

        }

        [System.Web.Services.WebMethod()]
        public static clsData[] getData()
        {
           // string gen;
            string qry = "select u.gender,u.age,u.occupation,u.income,s.Q1,s.Q2,s.Q3,s.Q4,s.Q5,s.Q6,s.Q7,s.Q8,s.Q9,s.Q10 from userinfo u JOIN usersurvey s on u.password = idusersurvey";

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
                        log.gender = dtrow["gender"].ToString();
                        // gen = log.gender;
                        log.Age = dtrow["age"].ToString();
                        log.occ = dtrow["occupation"].ToString();
                        log.inc = dtrow["income"].ToString();
                        log.q1 = dtrow["Q1"].ToString();
                        log.q2 = dtrow["Q2"].ToString();
                        log.q3 = dtrow["Q3"].ToString();
                        log.q4 = dtrow["Q4"].ToString();
                        log.q5 = dtrow["Q5"].ToString();
                        log.q6 = dtrow["Q6"].ToString();
                        log.q7 = dtrow["Q7"].ToString();
                        log.q8 = dtrow["Q8"].ToString();
                        log.q9 = dtrow["Q9"].ToString();
                        log.q10 = dtrow["Q10"].ToString();

                        details.Add(log);
                    }

                    con.Close();
                    return details.ToArray();
                }
            }
        }

    }
}