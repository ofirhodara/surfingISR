using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
//
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
//

/// <summary>
/// Summary description for DalAccessAccess
/// </summary>
public class DalAccess
{

   
    private OleDbConnection conn;
    private OleDbCommand command;
    private OleDbDataAdapter adapter;
    

    public DalAccess(string strQuery)
    {      
        //לכאן יש להעתיק את ה string Connection 
        //string ConnectionString = string.Format(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\firstData.mdb");
        string ConnectionString = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\masad.accdb");
        conn = new OleDbConnection(ConnectionString);//קשר
        command = new OleDbCommand(strQuery, conn);//פקודה
        adapter = new OleDbDataAdapter(command);//מבצע את הפעולה
    }

    public int InsertUpdateDelete(string strSql)
    {
        int rowsAffected;
        this.conn.Open();
        OleDbCommand cmd = new OleDbCommand(strSql, conn);
        rowsAffected = cmd.ExecuteNonQuery();
        conn.Close();
        return rowsAffected;
    }

     public DataSet GetDataSet(string strSql,string tableName) //רק לסלקט מגדירה שטח חדש ds ומחזירה את השטח ביחד עם הנתונים
    {
        DataSet ds = new DataSet();
        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(strSql,conn);
        dataAdapter.Fill(ds, tableName);
        return ds;
    }


	}

