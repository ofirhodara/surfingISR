<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        Application["counterGeneral"] = 0;
        Application["counterBoards"] = 0;
        Application["counterIsrael"] = 0;
        Application["counterOfir"] = 0;
        Application["counterShop"] = 0;
        // Code that runs on application startup
        
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {   //לשמור מידע על משתמש יחיד
        // Code that runs when a new session is started
        Session["admin"] = "no";
        Session["peil"] = "no";
        Session["emailNow"] = "";
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        
        Session["admin"] = "no";
        Session["peil"] = "no";
        Session["emailNow"] = "";
    }
       
</script>
