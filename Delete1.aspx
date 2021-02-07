<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Delete1.aspx.cs" Inherits="Delete1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="JScript.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="Form16" runat="server" onsubmit="return bdikotDelete()">

        <br />
        <h1>מחיקת משתמשים:</h1>
        <br />
        <br />
        <br />
        <%=allUsersString2%>
        <br />
        <center>
            <p>הזן את פרטי המשתמש שהינך רוצה למחוק:</p>
            <table>
                <tr>
                    <td>שם מלא:
                    </td>
                    <td>
                        <input name="name_2" id="name_2" />
                    </td>
                    <td>
                        <input type="button" id="wrong_name2" name="wrong_name2" style="display: none" />
                    </td>
                </tr>
                <tr>
                    <td>סיסמא:
                    </td>
                    <td>
                        <input name="passs" id="passs" />
                    </td>
                    <td>
                        <input type="button" id="wrong_passs" name="wrong_passs" style="display: none" />
                    </td>
                </tr>
            </table>
            <br />
            <input type="submit" value="מחק" />
        </center>
        <br />
        <br />
        <p><%=delete_1 %></p>
    </form>
</asp:Content>

