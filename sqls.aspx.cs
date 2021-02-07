using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class sqls : System.Web.UI.Page
{
    public DataSet ds;
    public string table;
    public int mone;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlS = "SELECT Name_user,email FROM Users where surf_Connection='c_surfer' AND surf_Years='aboveTwenty2' ";
        DalAccess dal = new DalAccess(sqlS);
        ds = dal.GetDataSet(sqlS, "Users");
        printUsers();
    }
    protected void printUsers()
    {
        table = "<center><table style='text-align:center'>";
        table += "<tr style='font-size:30px'><td style='border:2px solid blue'>שם המשתמש:</td>" +
            "<td style='border:2px solid blue' >כתובת מייל:</td>";
        mone = 0;
        for (int r = 0; r < ds.Tables[0].Rows.Count; r++)
        {
            DataRow row = ds.Tables[0].Rows[r];
            table += "<tr>";
            table += "<td style='border:2px solid blue'>" + row["Name_user"].ToString() + "</td>";
            table += "<td style='border:2px solid blue'>" + row["email"].ToString() + "</td>";
            
            mone++;
        }
        table += "</table><br />";
    }
}