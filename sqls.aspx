<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sqls.aspx.cs" Inherits="sqls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h1>פרטי המשתמשים שגולשים מעל 20 שנים:</h1>
        <br />
        <br />
        <%=table%>
        <br />
        <br />
        <p>
           מספר החשבונות שעונים על התנאי:
        <%=mone%>
        </p>
        <br />
        <br />
        <br />
           
</asp:Content>

