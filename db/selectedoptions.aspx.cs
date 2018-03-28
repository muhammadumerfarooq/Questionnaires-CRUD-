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
    public partial class selectedoptions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class clsData
        {
            public String Q1 { get; set; }
            public String Q2 { get; set; }
            public String Q3 { get; set; }
            public String Q4 { get; set; }
            public String Q5 { get; set; }
            public String Q6 { get; set; }
            public String Q7 { get; set; }
            public String Q8 { get; set; }
            public String Q9 { get; set; }
            public String Q10 { get; set; }
            public String Q1a { get; set; }
            public String Q1b { get; set; }
            public String Q1c { get; set; }
            public String Q1d { get; set; }
            public String Q2a { get; set; }
            public String Q2b { get; set; }
            public String Q2c { get; set; }
            public String Q2d { get; set; }
            public String Q3a { get; set; }
            public String Q3b { get; set; }
            public String Q3c { get; set; }
            public String Q3d { get; set; }
            public String Q4a { get; set; }
            public String Q4b { get; set; }
            public String Q4c { get; set; }
            public String Q4d { get; set; }
            public String Q5a { get; set; }
            public String Q5b { get; set; }
            public String Q5c { get; set; }
            public String Q5d { get; set; }
            public String Q6a { get; set; }
            public String Q6b { get; set; }
            public String Q6c { get; set; }
            public String Q6d { get; set; }
            public String Q7a { get; set; }
            public String Q7b { get; set; }
            public String Q7c { get; set; }
            public String Q7d { get; set; }
            public String Q8a { get; set; }
            public String Q8b { get; set; }
            public String Q8c { get; set; }
            public String Q8d { get; set; }
            public String Q9a { get; set; }
            public String Q9b { get; set; }
            public String Q9c { get; set; }
            public String Q9d { get; set; }
            public String Q10a { get; set; }
            public String Q10b { get; set; }
            public String Q10c { get; set; }
            public String Q10d { get; set; }


        }

        [System.Web.Services.WebMethod()]
        public static clsData[] getData()
        {
            string qry1 = "Select Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10 from usersurvey";
            
            List<clsData> details = new List<clsData>();
            clsData log = new clsData();
            clsData log1 = new clsData();
            int size = 0;
            string Q = qry1;
            int q1a = 0, q1b = 0, q1c = 0, q1d = 0;
            int q2a = 0, q2b = 0, q2c = 0, q2d = 0;
            int q3a = 0, q3b = 0, q3c = 0, q3d = 0;
            int q4a = 0, q4b = 0, q4c = 0, q4d = 0;
            int q5a = 0, q5b = 0, q5c = 0, q5d = 0;
            int q6a = 0, q6b = 0, q6c = 0, q6d = 0;
            int q7a = 0, q7b = 0, q7c = 0, q7d = 0;
            int q8a = 0, q8b = 0, q8c = 0, q8d = 0;
            int q9a = 0, q9b = 0, q9c = 0, q9d = 0;
            int q10a = 0, q10b = 0, q10c = 0, q10d = 0;
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
                        size++;
                         log.Q1 = dtrow["Q1"].ToString();
                        if(int.Parse(log.Q1)==1)
                        {
                            q1a++;
                        }
                        if (int.Parse(log.Q1) == 2)
                        {
                            q1b++;
                        }
                        if (int.Parse(log.Q1) == 3)
                        {
                            q1c++;
                        }
                        if (int.Parse(log.Q1) == 4)
                        {
                            q1d++;
                        }
                        log.Q2 = dtrow["Q2"].ToString();
                        if (int.Parse(log.Q2) == 1)
                        {
                            q2a++;
                        }
                        if (int.Parse(log.Q2) == 2)
                        {
                            q2b++;
                        }
                        if (int.Parse(log.Q2) == 3)
                        {
                            q2c++;
                        }
                        if (int.Parse(log.Q2) == 4)
                        {
                            q2d++;
                        }

                        log.Q3 = dtrow["Q3"].ToString();
                        if (int.Parse(log.Q3) == 1)
                        {
                            q3a++;
                        }
                        if (int.Parse(log.Q3) == 2)
                        {
                            q3b++;
                        }
                        if (int.Parse(log.Q3) == 3)
                        {
                            q3c++;
                        }
                        if (int.Parse(log.Q3) == 4)
                        {
                            q3d++;
                        }

                        log.Q4 = dtrow["Q4"].ToString();
                        if (int.Parse(log.Q4) == 1)
                        {
                            q4a++;
                        }
                        if (int.Parse(log.Q4) == 2)
                        {
                            q4b++;
                        }
                        if (int.Parse(log.Q4) == 3)
                        {
                            q4c++;
                        }
                        if (int.Parse(log.Q4) == 4)
                        {
                            q4d++;
                        }

                        log.Q5 = dtrow["Q5"].ToString();
                        if (int.Parse(log.Q5) == 1)
                        {
                            q5a++;
                        }
                        if (int.Parse(log.Q5) == 2)
                        {
                            q5b++;
                        }
                        if (int.Parse(log.Q5) == 3)
                        {
                            q5c++;
                        }
                        if (int.Parse(log.Q5) == 4)
                        {
                            q5d++;
                        }

                        log.Q6 = dtrow["Q6"].ToString();
                        if (int.Parse(log.Q6) == 1)
                        {
                            q6a++;
                        }
                        if (int.Parse(log.Q6) == 2)
                        {
                            q6b++;
                        }
                        if (int.Parse(log.Q6) == 3)
                        {
                            q6c++;
                        }
                        if (int.Parse(log.Q6) == 4)
                        {
                            q6d++;
                        }

                        log.Q7 = dtrow["Q7"].ToString();
                        if (int.Parse(log.Q7) == 1)
                        {
                            q7a++;
                        }
                        if (int.Parse(log.Q7) == 2)
                        {
                            q7b++;
                        }
                        if (int.Parse(log.Q7) == 3)
                        {
                            q7c++;
                        }
                        if (int.Parse(log.Q7) == 4)
                        {
                            q7d++;
                        }

                        log.Q8 = dtrow["Q8"].ToString();
                        if (int.Parse(log.Q8) == 1)
                        {
                            q8a++;
                        }
                        if (int.Parse(log.Q8) == 2)
                        {
                            q8b++;
                        }
                        if (int.Parse(log.Q8) == 3)
                        {
                            q8c++;
                        }
                        if (int.Parse(log.Q8) == 4)
                        {
                            q8d++;
                        }

                        log.Q9  = dtrow["Q9"].ToString();
                        if (int.Parse(log.Q9) == 1)
                        {
                            q9a++;
                        }
                        if (int.Parse(log.Q9) == 2)
                        {
                            q9b++;
                        }
                        if (int.Parse(log.Q9) == 3)
                        {
                            q9c++;
                        }
                        if (int.Parse(log.Q9) == 4)
                        {
                            q9d++;
                        }

                        log.Q10 = dtrow["Q10"].ToString();
                        if (int.Parse(log.Q10) == 1)
                        {
                            q10a++;
                        }
                        if (int.Parse(log.Q10) == 2)
                        {
                            q10b++;
                        }
                        if (int.Parse(log.Q10) == 3)
                        {
                            q10c++;
                        }
                        if (int.Parse(log.Q10) == 4)
                        {
                            q10d++;
                        }

                    }
                    con.Close();
                    if (size == 0)
                        size++;
                    log1.Q1a = ((q1a * 100) / size).ToString();
                    log1.Q1b = ((q1b * 100) / size).ToString();
                    log1.Q1c = ((q1c * 100) / size).ToString();
                    log1.Q1d = ((q1d * 100) / size).ToString();

                    log1.Q2a = ((q2a * 100) / size).ToString();
                    log1.Q2b = ((q2b * 100) / size).ToString();
                    log1.Q2c = ((q2c * 100) / size).ToString();
                    log1.Q2d = ((q2d * 100) / size).ToString();

                    log1.Q3a = ((q3a * 100) / size).ToString();
                    log1.Q3b = ((q3b * 100) / size).ToString();
                    log1.Q3c = ((q3c * 100) / size).ToString();
                    log1.Q3d = ((q3d * 100) / size).ToString();

                    log1.Q4a = ((q4a * 100) / size).ToString();
                    log1.Q4b = ((q4b * 100) / size).ToString();
                    log1.Q4c = ((q4c * 100) / size).ToString();
                    log1.Q4d = ((q4d * 100) / size).ToString();

                    log1.Q5a = ((q5a * 100) / size).ToString();
                    log1.Q5b = ((q5b * 100) / size).ToString();
                    log1.Q5c = ((q5c * 100) / size).ToString();
                    log1.Q5d = ((q5d * 100) / size).ToString();

                    log1.Q6a = ((q6a * 100) / size).ToString();
                    log1.Q6b = ((q6b * 100) / size).ToString();
                    log1.Q6c = ((q6c * 100) / size).ToString();
                    log1.Q6d = ((q6d * 100) / size).ToString();

                    log1.Q7a = ((q7a * 100) / size).ToString();
                    log1.Q7b = ((q7b * 100) / size).ToString();
                    log1.Q7c = ((q7c * 100) / size).ToString();
                    log1.Q7d = ((q7d * 100) / size).ToString();

                    log1.Q8a = ((q8a * 100) / size).ToString();
                    log1.Q8b = ((q8b * 100) / size).ToString();
                    log1.Q8c = ((q8c * 100) / size).ToString();
                    log1.Q8d = ((q8d * 100) / size).ToString();

                    log1.Q9a = ((q9a * 100) / size).ToString();
                    log1.Q9b = ((q9b * 100) / size).ToString();
                    log1.Q9c = ((q9c * 100) / size).ToString();
                    log1.Q9d = ((q9d * 100) / size).ToString();

                    log1.Q10a = ((q10a * 100) / size).ToString();
                    log1.Q10b = ((q10b * 100) / size).ToString();
                    log1.Q10c = ((q10c * 100) / size).ToString();
                    log1.Q10d = ((q10d * 100) / size).ToString();

                    details.Add(log1);
                   // Console.WriteLine(q1a+" "+q1b+" "+q1c+" "+q1d);
                    
                    }
                
            }
            return details.ToArray();

        }
    }

}
