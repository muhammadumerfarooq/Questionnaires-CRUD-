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



    public partial class UserSurvey : System.Web.UI.Page
    {
        public static string pass = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Request.QueryString["val"] != null)
            {
                pass = Page.Request.QueryString["val"];
            }
        }
        public class clsData
        {
            public int id { get; set; }
            public string Q1 { get; set; }
            public string Q1a { get; set; }
            public string Q1b { get; set; }
            public string Q1c { get; set; }
            public string Q1d { get; set; }
            public string Q2 { get; set; }
            public string Q2a { get; set; }
            public string Q2b { get; set; }
            public string Q2c { get; set; }
            public string Q2d { get; set; }
            public string Q3 { get; set; }
            public string Q3a { get; set; }
            public string Q3b { get; set; }
            public string Q3c { get; set; }
            public string Q3d { get; set; }
            public string Q4 { get; set; }
            public string Q4a { get; set; }
            public string Q4b { get; set; }
            public string Q4c { get; set; }
            public string Q4d { get; set; }
            public string Q5 { get; set; }
            public string Q5a { get; set; }
            public string Q5b { get; set; }
            public string Q5c { get; set; }
            public string Q5d { get; set; }
            public string Q6 { get; set; }
            public string Q6a { get; set; }
            public string Q6b { get; set; }
            public string Q6c { get; set; }
            public string Q6d { get; set; }
            public string Q7 { get; set; }
            public string Q7a { get; set; }
            public string Q7b { get; set; }
            public string Q7c { get; set; }
            public string Q7d { get; set; }
            public string Q8 { get; set; }
            public string Q8a { get; set; }
            public string Q8b { get; set; }
            public string Q8c { get; set; }
            public string Q8d { get; set; }
            public string Q9 { get; set; }
            public string Q9a { get; set; }
            public string Q9b { get; set; }
            public string Q9c { get; set; }
            public string Q9d { get; set; }
            public string Q10 { get; set; }
            public string Q10a { get; set; }
            public string Q10b { get; set; }
            public string Q10c { get; set; }
            public string Q10d { get; set; }

        }

        [System.Web.Services.WebMethod()]
        public static Boolean submit(string Q1_radio_a, string Q1_radio_b, string Q1_radio_c, string Q1_radio_d, string Q2_radio_a, string Q2_radio_b, string Q2_radio_c, string Q2_radio_d,
                               string Q3_radio_a, string Q3_radio_b, string Q3_radio_c, string Q3_radio_d, string Q4_radio_a, string Q4_radio_b, string Q4_radio_c, string Q4_radio_d,
      string Q5_radio_a, string Q5_radio_b, string Q5_radio_c, string Q5_radio_d, string Q6_radio_a, string Q6_radio_b, string Q6_radio_c, string Q6_radio_d,
      string Q7_radio_a, string Q7_radio_b, string Q7_radio_c, string Q7_radio_d, string Q8_radio_a, string Q8_radio_b, string Q8_radio_c, string Q8_radio_d,
      string Q9_radio_a, string Q9_radio_b, string Q9_radio_c, string Q9_radio_d, string Q10_radio_a, string Q10_radio_b, string Q10_radio_c, string Q10_radio_d)
        {
            int Q1 = 0, Q2 = 0, Q3 = 0, Q4 = 0, Q5 = 0, Q6 = 0, Q7 = 0, Q8 = 0, Q9 = 0, Q10 = 0;
            if (Q1_radio_a == "1" || Q1_radio_a == "on")
            {
                Q1 = 1;
            }
            else if (Q1_radio_b == "1" || Q1_radio_b == "on")
            {

                Q1 = 2;
            }
            else if (Q1_radio_c == "1" || Q1_radio_c == "on")
            {

                Q1 = 3;
            }
            else if (Q1_radio_d == "1" || Q1_radio_d == "on")
            {

                Q1 = 4;
            }
            ///////////////////////////////  2 ////////////
            if (Q2_radio_a == "1" || Q2_radio_a == "on")
            {

                Q2 = 1;
            }
            else if (Q2_radio_b == "1" || Q2_radio_b == "on")
            {

                Q2 = 2;
            }
            else if (Q2_radio_c == "1" || Q2_radio_c == "on")
            {

                Q2 = 3;
            }
            else if (Q2_radio_d == "1" || Q2_radio_d == "on")
            {

                Q2 = 4;
            }

            //////////////
            //////////////////// 3 /////////////////////

            if (Q3_radio_a == "1" || Q3_radio_a == "on")
            {

                Q3 = 1;
            }
            else if (Q3_radio_b == "1" || Q3_radio_b == "on")
            {
                Q3 = 2;

            }
            else if (Q3_radio_c == "1" || Q3_radio_c == "on")
            {
                Q3 = 3;

            }
            else if (Q3_radio_d == "1" || Q3_radio_d == "on")
            {
                Q3 = 4;

            }
            /////////////////////////////////////
            ///////////////////////4 ////////////////////////
            if (Q4_radio_a == "1" || Q4_radio_a == "on")
            {
                Q4 = 1;

            }
            else if (Q4_radio_b == "1" || Q4_radio_b == "on")
            {
                Q4 = 2;

            }
            else if (Q4_radio_c == "1" || Q4_radio_c == "on")
            {
                Q4 = 3;

            }
            else if (Q4_radio_d == "1" || Q4_radio_d == "on")
            {
                Q4 = 4;

            }///////////////////////////
             ///////////////////////////5 ////////////////
            if (Q5_radio_a == "1" || Q5_radio_a == "on")
            {
                Q5 = 1;

            }
            else if (Q5_radio_b == "1" || Q5_radio_b == "on")
            {
                Q5 = 2;

            }
            else if (Q5_radio_c == "1" || Q5_radio_c == "on")
            {
                Q5 = 3;

            }
            else if (Q5_radio_d == "1" || Q5_radio_d == "on")
            {
                Q5 = 4;

            }
            ///////////////////  6  ///////////////////////
            if (Q6_radio_a == "1" || Q6_radio_a == "on")
            {
                Q6 = 1;

            }
            else if (Q6_radio_b == "1" || Q6_radio_b == "on")
            {
                Q6 = 2;

            }
            else if (Q6_radio_c == "1" || Q6_radio_c == "on")
            {
                Q6 = 3;

            }
            else if (Q6_radio_d == "1" || Q6_radio_d == "on")
            {
                Q6 = 4;

            }
            /////////////////////// 7 ////////////////////////

            if (Q7_radio_a == "1" || Q7_radio_a == "on")
            {
                Q7 = 1;

            }
            else if (Q7_radio_b == "1" || Q7_radio_b == "on")
            {
                Q7 = 2;

            }
            else if (Q7_radio_c == "1" || Q7_radio_c == "on")
            {
                Q7 = 3;

            }
            else if (Q7_radio_d == "1" || Q7_radio_d == "on")
            {
                Q7 = 4;

            }
            /////////////////////// 8 ////////////////////////
            if (Q8_radio_a == "1" || Q8_radio_a == "on")
            {
                Q8 = 1;

            }
            else if (Q8_radio_b == "1" || Q8_radio_b == "on")
            {
                Q8 = 2;

            }
            else if (Q8_radio_c == "1" || Q8_radio_c == "on")
            {
                Q8 = 3;

            }
            else if (Q8_radio_d == "1" || Q8_radio_d == "on")
            {
                Q8 = 4;

            }
            //////////////////////// 9 ///////////////////
            if (Q9_radio_a == "1" || Q9_radio_a == "on")
            {
                Q9 = 1;

            }
            else if (Q9_radio_b == "1" || Q9_radio_b == "on")
            {
                Q9 = 2;

            }
            else if (Q9_radio_c == "1" || Q9_radio_c == "on")
            {
                Q9 = 3;

            }
            else if (Q9_radio_d == "1" || Q9_radio_d == "on")
            {
                Q9 = 4;

            }
            ///////////////////// 10 ////////////////////////
            if (Q10_radio_a == "1" || Q10_radio_a == "on")
            {
                Q10 = 1;

            }
            else if (Q10_radio_b == "1" || Q10_radio_b == "on")
            {

                Q10 = 2;
            }
            else if (Q10_radio_c == "1" || Q10_radio_c == "on")
            {

                Q10 = 3;
            }
            else if (Q10_radio_d == "1" || Q10_radio_d == "on")
            {

                Q10 = 4;
            }

            
            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("insert into usersurvey values('" + pass + "'," + Q1 + ", " + Q2 + ", " + Q3 + ", " + Q4 + ", " + Q5 + ", " + Q6 + ", " + Q7 + ", " + Q8 + ", " + Q9 + ", " + Q10 + ")", con))
                {
                    cmd.Connection = con;
                    con.Open();
                    try
                    {
                        if (cmd.ExecuteNonQuery() > 0)
                        {
                            returnValue = true;
                        }
                        else
                        {
                            con.Close();

                        }
                    }
                    catch (Exception)
                    {
                        con.Close();
                        Boolean rvalue = updateusersurvey(pass, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10);
                        return rvalue;

                    }
                    con.Close();
                }
            }
            return returnValue;

        }

        [System.Web.Services.WebMethod()]
        public static Boolean updateusersurvey(string p, int q1, int q2, int q3, int q4, int q5, int q6, int q7, int q8, int q9, int q10)
        {
            bool returnValue = false;
            string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            using (MySqlConnection con = new MySqlConnection(constr))
            {
                String query = "UPDATE usersurvey SET Q1 = " + q1 + ", Q2 = " + q2 + " , Q3 = " + q3 + " , Q4 = " + q4 + " , Q5  = " + q5 + "  , Q6 = " + q6 + " , Q7 = " + q7 + ", Q8 = " + q8 + " , Q9 = " + q9 + " , Q10 = " + q10 + " WHERE idusersurvey = '" + p + "' ";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Connection = con;




                if (cmd.ExecuteNonQuery() > 0)
                {
                    returnValue = true;

                    con.Close();
                    return returnValue;
                }

                else
                {

                    con.Close();
                    return false;

                }
            }
            

        }









        [System.Web.Services.WebMethod()]
        public static clsData[] insertdata()
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

                        log.Q1 = dtrow["Q1"].ToString();
                        log.Q1a = dtrow["Q1a"].ToString();
                        log.Q1b = dtrow["Q1b"].ToString();
                        log.Q1c = dtrow["Q1c"].ToString();
                        log.Q1d = dtrow["Q1d"].ToString();
                        log.Q2 = dtrow["Q2"].ToString();
                        log.Q2a = dtrow["Q2a"].ToString();
                        log.Q2b = dtrow["Q2b"].ToString();
                        log.Q2c = dtrow["Q2c"].ToString();
                        log.Q2d = dtrow["Q2d"].ToString();
                        log.Q3 = dtrow["Q3"].ToString();
                        log.Q3a = dtrow["Q3a"].ToString();
                        log.Q3b = dtrow["Q3b"].ToString();
                        log.Q3c = dtrow["Q3c"].ToString();
                        log.Q3d = dtrow["Q3d"].ToString();
                        log.Q4 = dtrow["Q4"].ToString();
                        log.Q4a = dtrow["Q4a"].ToString();
                        log.Q4b = dtrow["Q4b"].ToString();
                        log.Q4c = dtrow["Q4c"].ToString();
                        log.Q4d = dtrow["Q4d"].ToString();
                        log.Q5 = dtrow["Q5"].ToString();
                        log.Q5a = dtrow["Q5a"].ToString();
                        log.Q5b = dtrow["Q5b"].ToString();
                        log.Q5c = dtrow["Q5c"].ToString();
                        log.Q5d = dtrow["Q5d"].ToString();
                        log.Q6 = dtrow["Q6"].ToString();
                        log.Q6a = dtrow["Q6a"].ToString();
                        log.Q6b = dtrow["Q6b"].ToString();
                        log.Q6c = dtrow["Q6c"].ToString();
                        log.Q6d = dtrow["Q6d"].ToString();
                        log.Q7 = dtrow["Q7"].ToString();
                        log.Q7a = dtrow["Q7a"].ToString();
                        log.Q7b = dtrow["Q7b"].ToString();
                        log.Q7c = dtrow["Q7c"].ToString();
                        log.Q7d = dtrow["Q7d"].ToString();
                        log.Q8 = dtrow["Q8"].ToString();
                        log.Q8a = dtrow["Q8a"].ToString();
                        log.Q8b = dtrow["Q8b"].ToString();
                        log.Q8c = dtrow["Q8c"].ToString();
                        log.Q8d = dtrow["Q8d"].ToString();
                        log.Q9 = dtrow["Q9"].ToString();
                        log.Q9a = dtrow["Q9a"].ToString();
                        log.Q9b = dtrow["Q9b"].ToString();
                        log.Q9c = dtrow["Q9c"].ToString();
                        log.Q9d = dtrow["Q9d"].ToString();
                        log.Q10 = dtrow["Q10"].ToString();
                        log.Q10a = dtrow["Q10a"].ToString();
                        log.Q10b = dtrow["Q10b"].ToString();
                        log.Q10c = dtrow["Q10c"].ToString();
                        log.Q10d = dtrow["Q10d"].ToString();

                        details.Add(log);
                    }
                    con.Close();
                    return details.ToArray();
                }
            }
        }

    }
}