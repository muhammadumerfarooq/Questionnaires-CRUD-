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
    public partial class AdminUpdate : System.Web.UI.Page
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
                            return false;
                        else
                            return true;
                    }
                    con.Close();

                    //      return details.ToArray();

                }

            }
            return false;
        }

        [System.Web.Services.WebMethod()]
        public static bool UpdateName(string password, string username)
        {
             bool check = CheckAdminData();
            if (check == true)
            {
                bool returnValue = false;
                string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                //" server = localhost; User Id = root; password = 1234; Persist Security Info = True; database = sakila";
                // 
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    String query = "UPDATE AdminInfo SET username = '" + username + "' WHERE password = '" + password + "' ";
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand(query, con);//,'" + username + "', '" + age + "', '" + occupation + "', '" + income + "')", 
                                                                    //con.Open();

                    cmd.Connection = con;




                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        returnValue = true;

                    }
                    //}
                    else //error
                    {
                        return false;

                    }
                    con.Close();

                }

                return returnValue;
            }

            //}

            else
            {
                
                return false;
            }
        }

        [System.Web.Services.WebMethod()]
        public static bool UpdateAge(string password, string Age)
        {
            bool returnValue = false;

            bool check = CheckAdminData();
            if (check == true)
            {
                string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                //" server = localhost; User Id = root; password = 1234; Persist Security Info = True; database = sakila";
                // 
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    String query = "UPDATE AdminInfo SET age = " + Age + " WHERE password = '" + password + "' ";
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand(query, con);//,'" + username + "', '" + age + "', '" + occupation + "', '" + income + "')", 
                                                                    //con.Open();

                    cmd.Connection = con;




                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        returnValue = true;

                    }
                    con.Close();

                }
            }
            else //error
            {
                return false;

            }
            
            
                return returnValue;
            

        }




        [System.Web.Services.WebMethod()]
        public static bool UpdateOcc(string password, string Occ)
        {
            bool returnValue = false;

            bool check = CheckAdminData();
            if (check == true)
            {
                string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                //" server = localhost; User Id = root; password = 1234; Persist Security Info = True; database = sakila";
                // 
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    String query = "UPDATE AdminInfo SET occupation = '" + Occ + "' WHERE password = '" + password + "' ";
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand(query, con);//,'" + username + "', '" + age + "', '" + occupation + "', '" + income + "')", 
                                                                    //con.Open();

                    cmd.Connection = con;




                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        returnValue = true;

                    }
                    con.Close();

                }
            }
            else //error
            {
                return false;

            }


            return returnValue;


        }


        [System.Web.Services.WebMethod()]
        public static bool UpdateInc(string password, string Inc)
        {
            bool returnValue = false;

            bool check = CheckAdminData();
            if (check == true)
            {
                string constr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                //" server = localhost; User Id = root; password = 1234; Persist Security Info = True; database = sakila";
                // 
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    String query = "UPDATE AdminInfo SET income = " + Inc + " WHERE password = '" + password + "' ";
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand(query, con);//,'" + username + "', '" + age + "', '" + occupation + "', '" + income + "')", 
                                                                    //con.Open();

                    cmd.Connection = con;




                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        returnValue = true;

                    }
                    con.Close();

                }
            }
            else //error
            {
                return false;

            }


            return returnValue;


        }









    }


}