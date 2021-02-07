<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="INDEX.aspx.cs" Inherits="INDEX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="JScript.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form7" runat="server" onsubmit="return bdikotSign()"> 
        <h1>דף התחברות לאתר:</h1>
        <br />
        <br />
        <center>
            <table>
                <tr>
                    <td>הכנס אימייל:
                    </td>
                    <td>
                        <input name="signEmail" id="signEmail" />
                    </td>
                    <td>
                        <input type="button" id="wrong_signEmail" name="wrong_signEmail" style="display: none" />
                    </td>
                </tr>
                <tr>
                    <td>הכנס סיסמה:
                    </td>
                    <td>
                        <input name="signPasswod" id="signPasswod" />
                    </td>
                    <td>
                        <input type="button" id="wrong_signPasswod" name="wrong_signPasswod" style="display: none" />
                    </td>
                </tr>
                <tr style="text-align: center">
                    <td colspan="2">
                        <br />
                        <input type="submit" value="התחבר" />
                    </td>
                </tr>
            </table>
            <br />
            <p><%=isValidSign%></p>
        </center>
    </form>
</asp:Content>
