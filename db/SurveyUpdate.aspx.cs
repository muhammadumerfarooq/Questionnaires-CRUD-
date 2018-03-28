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
    public partial class SurveyUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class clsData
        {
            public int id { get; set; }
            public string Q { get; set; }
            public string Qa { get; set; }
            public string Qb { get; set; }
            public string Qc { get; set; }
            public string Qd { get; set; }

        }



        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ10()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q10"].ToString();
                        log.Qa = dtrow["Q10a"].ToString();
                        log.Qb = dtrow["Q10b"].ToString();
                        log.Qc = dtrow["Q10c"].ToString();
                        log.Qd = dtrow["Q10d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }




        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ9()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q9"].ToString();
                        log.Qa = dtrow["Q9a"].ToString();
                        log.Qb = dtrow["Q9b"].ToString();
                        log.Qc = dtrow["Q8c"].ToString();
                        log.Qd = dtrow["Q9d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }




        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ8()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q8"].ToString();
                        log.Qa = dtrow["Q8a"].ToString();
                        log.Qb = dtrow["Q8b"].ToString();
                        log.Qc = dtrow["Q8c"].ToString();
                        log.Qd = dtrow["Q8d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }




        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ7()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q7"].ToString();
                        log.Qa = dtrow["Q7a"].ToString();
                        log.Qb = dtrow["Q7b"].ToString();
                        log.Qc = dtrow["Q7c"].ToString();
                        log.Qd = dtrow["Q7d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }




        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ6()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q6"].ToString();
                        log.Qa = dtrow["Q6a"].ToString();
                        log.Qb = dtrow["Q6b"].ToString();
                        log.Qc = dtrow["Q6c"].ToString();
                        log.Qd = dtrow["Q6d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }




        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ5()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q5"].ToString();
                        log.Qa = dtrow["Q5a"].ToString();
                        log.Qb = dtrow["Q5b"].ToString();
                        log.Qc = dtrow["Q5c"].ToString();
                        log.Qd = dtrow["Q5d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }





        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ4()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q4"].ToString();
                        log.Qa = dtrow["Q4a"].ToString();
                        log.Qb = dtrow["Q4b"].ToString();
                        log.Qc = dtrow["Q4c"].ToString();
                        log.Qd = dtrow["Q4d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }





        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ3()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q3"].ToString();
                        log.Qa = dtrow["Q3a"].ToString();
                        log.Qb = dtrow["Q3b"].ToString();
                        log.Qc = dtrow["Q3c"].ToString();
                        log.Qd = dtrow["Q3d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }





        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ2()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                        //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q2"].ToString();
                        log.Qa = dtrow["Q2a"].ToString();
                        log.Qb = dtrow["Q2b"].ToString();
                        log.Qc = dtrow["Q2c"].ToString();
                        log.Qd = dtrow["Q2d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }





        [System.Web.Services.WebMethod()]
        public static clsData[] ShowQ1()
        {
            string qry = "select * from survey";

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
                        //   log.id = Convert.ToInt32(dtrow["password"]);
                       //Label1.Text= dtrow["Q1"].ToString();

                        log.Q = dtrow["Q1"].ToString();
                        log.Qa = dtrow["Q1a"].ToString();
                        log.Qb = dtrow["Q1b"].ToString();
                        log.Qc = dtrow["Q1c"].ToString();
                        log.Qd = dtrow["Q1d"].ToString();
                        
                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }


        public static String getpassword()
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
                      //  String name = dtrow["username"].ToString();
                       // if (pass.Equals(""))
                            return pass;
                    }
                    con.Close();

                    //      return details.ToArray();

                }
                
            }
            return "";

        }

        public static bool getpasswordsurvey()
        {
            string qry = "select * from survey";

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
                        //  String name = dtrow["username"].ToString();
                        if (!pass.Equals(""))
                        return true;
                    }
                    con.Close();

                    //      return details.ToArray();

                }

            }
            return false;

        }

        public static bool setpassword(String password)
        {
           
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            DataSet ds = new DataSet();
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("insert into survey values('" + password + "','" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" +
                    "','" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" +
                    "','" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" +
                    "','" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" +
                    "','" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "', '" + "" + "')", con))

                {

                    cmd.Connection = con;
                    con.Open();

                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        con.Close();
                        return true;
                    }
                    else //error
                    {
                        con.Close();
                        return false;

                    }
                
                }
            }
        
        
            //return false;

        }

        [System.Web.Services.WebMethod()]
        public static bool UpdateQ1( string Q1, String Q1a,String Q1b,String Q1c, String Q1d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if(pass == false)
           setpassword(password);

                bool returnValue = false;
                string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    String query = "UPDATE Survey SET Q1 = '" + Q1 + "', Q1a = '"+ Q1a + "' , Q1b = '" + Q1b + "' , Q1c = '" + Q1c + "' , Q1d = '" + Q1d + "' WHERE password = '" + password + "' ";
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand(query, con);

                    cmd.Connection = con;




                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        returnValue = true;

                    }
                    
                    else 
                    {
                        return false;

                    }
                    con.Close();

                }

                return returnValue;
            }


        [System.Web.Services.WebMethod()]
        public static bool UpdateQ2(string Q2, String Q2a, String Q2b, String Q2c, String Q2d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q2 = '" + Q2 + "', Q2a = '" + Q2a + "' , Q2b = '" + Q2b + "' , Q2c = '" + Q2c + "' , Q2d = '" + Q2d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }

        [System.Web.Services.WebMethod()]

        public static bool UpdateQ3(string Q3, String Q3a, String Q3b, String Q3c, String Q3d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q3 = '" + Q3 + "', Q3a = '" + Q3a + "' , Q3b = '" + Q3b + "' , Q3c = '" + Q3c + "' , Q3d = '" + Q3d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }

        [System.Web.Services.WebMethod()]

        public static bool UpdateQ4(string Q4, String Q4a, String Q4b, String Q4c, String Q4d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q4 = '" + Q4 + "', Q4a = '" + Q4a + "' , Q4b = '" + Q4b + "' , Q4c = '" + Q4c + "' , Q4d = '" + Q4d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }


        [System.Web.Services.WebMethod()]

        public static bool UpdateQ5(string Q5, String Q5a, String Q5b, String Q5c, String Q5d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q5 = '" + Q5 + "', Q5a = '" + Q5a + "' , Q5b = '" + Q5b + "' , Q5c = '" + Q5c + "' , Q5d = '" + Q5d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }


        [System.Web.Services.WebMethod()]

        public static bool UpdateQ6(string Q6, String Q6a, String Q6b, String Q6c, String Q6d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q6 = '" + Q6 + "', Q6a = '" + Q6a + "' , Q6b = '" + Q6b + "' , Q6c = '" + Q6c + "' , Q6d = '" + Q6d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }


        [System.Web.Services.WebMethod()]
        public static bool UpdateQ7(string Q7, String Q7a, String Q7b, String Q7c, String Q7d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q7 = '" + Q7 + "', Q7a = '" + Q7a + "' , Q7b = '" + Q7b + "' , Q7c = '" + Q7c + "' , Q7d = '" + Q7d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }



        [System.Web.Services.WebMethod()]
        public static bool UpdateQ8(string Q8, String Q8a, String Q8b, String Q8c, String Q8d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q8 = '" + Q8 + "', Q8a = '" + Q8a + "' , Q8b = '" + Q8b + "' , Q8c = '" + Q8c + "' , Q8d = '" + Q8d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }


        [System.Web.Services.WebMethod()]
        public static bool UpdateQ9(string Q9, String Q9a, String Q9b, String Q9c, String Q9d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q9 = '" + Q9 + "', Q9a = '" + Q9a + "' , Q9b = '" + Q9b + "' , Q9c = '" + Q9c + "' , Q9d = '" + Q9d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }


        [System.Web.Services.WebMethod()]
        public static bool UpdateQ10(string Q10, String Q10a, String Q10b, String Q10c, String Q10d)
        {
            String password = getpassword();
            bool pass = getpasswordsurvey();
            if (pass == false)
                setpassword(password);

            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE Survey SET Q10 = '" + Q10 + "', Q10a = '" + Q10a + "' , Q10b = '" + Q10b + "' , Q10c = '" + Q10c + "' , Q10d = '" + Q10d + "' WHERE password = '" + password + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                }

                else
                {
                    return false;

                }
                con.Close();

            }

            return returnValue;
        }





    }
}