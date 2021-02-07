using System;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
public partial class INDEX : System.Web.UI.Page
{
    public DataSet ds;
    public string isValidSign;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            Button_Click();
    }
    protected void Button_Click()
    {
        string em = Request.Form["signEmail"];
        string si = Request.Form["signPasswod"];
        if (!Adminn(em, si))
        {
            string sqlS = "SELECT * FROM Users where email='" + em + "' and pass='" + si + "'";
            DalAccess dal = new DalAccess(sqlS);
            ds = dal.GetDataSet(sqlS, "Users");
            if (bdika()) 
            {
                Session["emailNow"] = em;
                Session["peil"] = "yes";
                Response.Redirect("mainsurfing.aspx");
            }
            else isValidSign = "המשתמש לא קיים";
        }
        else { Session["peil"] = "yes"; Session["emailNow"] = em; Response.Redirect("mainsurfing.aspx"); }                              
    }
    protected bool Adminn(string email, string sisma)
    {
        if (email == "ofir1682002@gmail.com" && sisma == "ofir2474")
        {
            isValidSign = "הינך מנהל האתר!!";
            Session["admin"] = "yes";           
            return true;
        }
        else
        {          
            isValidSign = "";
            return false;
        }
    }
    protected bool bdika()
    {
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        return true;
    }
}