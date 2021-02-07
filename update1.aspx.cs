using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class update1 : System.Web.UI.Page
{
    public DataSet ds;
    public string ObjSelect;
    public string Sisma, updatee; 
    protected void Page_Load(object sender, EventArgs e)
    {   
    }
    protected void Button2_Click(object sender, EventArgs e)
    {       
        Sisma = Request.Form["i2"];
        int l = Sisma.Length;
        if (l > 4 && l < 10)
        {
            string sqlS = "Update users SET pass='" + Sisma + "' where email='" + Session["emailNow"] + "'";
            DalAccess dal = new DalAccess(sqlS);
            int x = dal.InsertUpdateDelete(sqlS);
            if (x > 0)
            {
                updatee = "  פעולת עידכון הצליחה,מספר הפרטים שעודכנו ה:א " + x;
                updatee += "</br>הסיסמא החדשה היא:" + Sisma;
            }
            else updatee = "פעולת עידכון נכשלה";
        }
        else
            updatee = "הסיסמא צריכה להיות בין 4 ל10 תווים";
    }
}