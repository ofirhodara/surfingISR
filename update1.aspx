<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="update1.aspx.cs" Inherits="update1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="Form20" runat="server">
    <div>
        <center>
            <h1>
            עדכון פרטי המשתמש:</h1>
            <br />                    
            <p>הכנס את סיסמתך החדשה!</p>
            <input id="i2" name="i2" />
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="עדכן " OnClick="Button2_Click" />
            <br />
            <br /> 
            <p>
                <%=updatee %></p>
        </center>
    </div>
    </form>
</asp:Content>
