using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class usersTable : System.Web.UI.Page
{
    public DataSet ds;
    public string allUsersString;
    public int mone;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlS = "SELECT * FROM Users";
        DalAccess dal = new DalAccess(sqlS);
        ds = dal.GetDataSet(sqlS, "Users");
        printUsers();
    }
    protected void printUsers()
    {
        allUsersString = "<center><table style='text-align:center'>";
        allUsersString += "<tr style='font-size:30px'><td style='border:2px solid blue'>שם המשתמש:</td><td style='border:2px solid blue'>תעודת זהות:</td>" +
            "<td style='border:2px solid blue'>מין:</td>" +
            "<td style='border:2px solid blue' >כתובת מייל:</td><td style='border:2px solid blue'>סיסמא:</td><td style='border:2px solid blue'>כמות שנים גולש:</td>" +
            "<td style='border:2px solid blue'>קשר לעולם הגלישה:</td></tr>";
        mone = 0;
        for (int r = 0; r < ds.Tables[0].Rows.Count; r++)
        {
            DataRow row = ds.Tables[0].Rows[r];
            allUsersString += "<tr>";
            allUsersString += "<td style='border:2px solid blue'>" + row["Name_user"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["ID"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["gender"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["email"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["pass"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["surf_Years"].ToString() + "</td>";
            allUsersString += "<td style='border:2px solid blue'>" + row["surf_connection"].ToString() + "</td>";
            mone++;
        }
        allUsersString += "</table><br />";
    }
}