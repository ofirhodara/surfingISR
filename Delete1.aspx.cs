using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Delete1 : System.Web.UI.Page
{
    public DataSet ds;
    public string allUsersString2;
    public string delete_1="";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlS = "SELECT * FROM users";
        DalAccess dal = new DalAccess(sqlS);
        ds = dal.GetDataSet(sqlS, "users");
        printUsers2();

        if (IsPostBack)
        {
            string UN = Request.Form["name_2"];
            string S = Request.Form["passs"];
            string sqlS1 = "SELECT * FROM Users where Name_user='" + UN + "' and pass='" + S + "'";
            dal = new DalAccess(sqlS1);
            ds = dal.GetDataSet(sqlS1, "Users");
            if (ds.Tables[0].Rows.Count == 0)
                delete_1 = UN + "  , " + S + " is not exist";
            else
            {
                sqlS = "Delete  * from Users where Name_user='" + UN + "' and pass='" + S + "'";
                dal = new DalAccess(sqlS);
                int x = dal.InsertUpdateDelete(sqlS);
                if (x > 0)
                    delete_1 = " :פעולת מחיקה הצליחה,מספר הפרטים שעודכנו הוא" + x;
                else
                    delete_1 = "פעולת מחיקה נכשלה";
            }

        }
    }
    protected void printUsers2()
    {
        allUsersString2 = "<center><table style='text-align:center'>";
        allUsersString2 += "<tr style='font-size:30px'><td style='border:2px solid blue'>שם המשתמש:</td><td style='border:2px solid blue'>תעודת זהות:</td><td style='border:2px solid blue'>מין:</td>" +
            "<td style='border:2px solid blue' >כתובת מייל:</td><td style='border:2px solid blue'>סיסמא:</td><td style='border:2px solid blue'>כמות שנים גולש:</td>" +
            "<td style='border:2px solid blue'>קשר לעולם הגלישה:</td></tr>";
        for (int r = 0; r < ds.Tables[0].Rows.Count; r++)
        {
            DataRow row = ds.Tables[0].Rows[r];
            allUsersString2 += "<tr>";
            allUsersString2 += "<td style='border:2px solid blue'>" + row["Name_user"].ToString() + "</td>";
            allUsersString2 += "<td style='border:2px solid blue'>" + row["ID"].ToString() + "</td>";
            allUsersString2+= "<td style='border:2px solid blue'>" + row["gender"].ToString() + "</td>";
            allUsersString2 += "<td style='border:2px solid blue'>" + row["email"].ToString() + "</td>";
            allUsersString2 += "<td style='border:2px solid blue'>" + row["pass"].ToString() + "</td>";
            allUsersString2 += "<td style='border:2px solid blue'>" + row["surf_Years"].ToString() + "</td>";
            allUsersString2 += "<td style='border:2px solid blue'>" + row["surf_connection"].ToString() + "</td>";
        }
        allUsersString2 += "</table><br />";
    }
}