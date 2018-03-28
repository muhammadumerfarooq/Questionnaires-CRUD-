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
    public partial class GraphIncome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class clsData
        {
            public String Incomeabove20 { get; set; }
            public String Incomeabove30 { get; set; }
            public String Incomeabove40 { get; set; }
            public String Incomeabove50 { get; set; }

            public String Incomeabove60 { get; set; }

        }

        [System.Web.Services.WebMethod()]
        public static clsData[] getData()
        {
            string qry1 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.income >= 1000 && userinfo.income < 30000 ";

            string qry2 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.income >= 30000 && userinfo.income < 40000 ";
            string qry3 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.income >= 40000 && userinfo.income < 50000 ";
            string qry4 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.income >= 50000 && userinfo.income <= 60000 ";

            string qry5 = "SELECT Count(password) FROM userinfo INNER JOIN usersurvey ON usersurvey.idusersurvey = userinfo.password && userinfo.income >= 60000 ";

            List<clsData> details = new List<clsData>();
            clsData log = new clsData();
            for (int i = 0; i < 5; i++)
            {
                string Q = "";
                if (i == 0)
                    Q = qry1;
                if (i == 1)
                    Q = qry2;
                if (i == 2)
                    Q = qry3;
                if (i == 3)
                    Q = qry4;
                if (i == 4)
                    Q = qry5;

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
                            if (i == 0)
                                log.Incomeabove20 = dtrow["Count(password)"].ToString();
                            if (i == 1)
                                log.Incomeabove30 = dtrow["Count(password)"].ToString();
                            if (i == 2)
                                log.Incomeabove40 = dtrow["Count(password)"].ToString();
                            if (i == 3)
                                log.Incomeabove50 = dtrow["Count(password)"].ToString();
                            if (i == 4)
                                log.Incomeabove60 = dtrow["Count(password)"].ToString();

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
