using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class register : System.Web.UI.Page
{
    public string IfOk;
    public DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string name1 = Request.Form["name_1"];
            string email1 = Request.Form["email"];
            string sisma = Request.Form["password1"];
            string id2 = Request.Form["tz_1"];
            string sex1 = Request.Form["sex"];
            string surfT = Request.Form["surf_time"];
            string connection1 = Request.Form["connection"];
            string sqlS1 = "SELECT * FROM Users where email='" + email1 + "' or ID=" + id2;
            DalAccess dal = new DalAccess(sqlS1);
            ds = dal.GetDataSet(sqlS1, "Users");
            if (ds.Tables[0].Rows.Count != 0)
                IfOk = "המייל או תעודת הזהות תפוסים!";
            else
            {
                string sqlS2 = "Insert into Users (Name_user,email,pass,gender,surf_Connection,surf_Years,ID) values ('" + name1 + "','" + email1 + "','" + sisma + "','" + sex1 + "','" + connection1 + "','" +surfT + "'," + id2 + ")";                   
                DalAccess dal2 = new DalAccess(sqlS2);
                int x = dal.InsertUpdateDelete(sqlS2);
                if (x > 0)
                { 
                IfOk = "  פעולת ההוספה הצליחה,מספר הפרטים שעודכנו הוא" + x;
                Session["peil"] = "yes";
                Session["emailNow"] = email1;
                Response.Redirect("mainsurfing.aspx");
                }
                else
                    IfOk = "פעולת ההוספה נכשלה,נסה שנית!";
            }

        }
    }
}
