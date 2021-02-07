<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="usersTable.aspx.cs" Inherits="usersTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="Form9" runat="server">
     
        <h1>רשימת משתמשים:</h1>
        <br />
        <br />
        <%=allUsersString%>
        <br />
        <br />
        <p>
            מספר החשבונות באתר הוא:
        <%=mone%>
        </p>
        <br />
        <br />
        <br />
           

    </form>
</asp:Content>
