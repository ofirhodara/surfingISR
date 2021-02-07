<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="anothersql.aspx.cs" Inherits="anothersql" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form11" runat="server">
    <h1>
        דף שאילתה:</h1>
    <br />
    <br />
    <center>
        <table>
            <tr>
                <td>
                    מין:
                </td>
                <td>
                    <input type="radio" name="sex1" id="male1" checked="checked" value="male" />זכר
                    <input type="radio" name="sex1" id="female1" value="female" />נקבה
                </td>
            </tr>
            <tr>
                <td>
                    מהו הקשר לעולם הגלישה?
                </td>
                <td>
                    <select name="connection3" id="connection3">
                        <option value="c_surfer">גולש</option>
                        <option value="c_shop">בעל חנות גלישה</option>
                        <option value="c_sealover">אוהב ים</option>
                        <option value="c_interestIn">מתעניין בענף</option>
                        <option value="c_none">אין לי קשר לעולם הגלישה</option>
                    </select>
                </td>
            </tr>
            <tr style="text-align: center">
                <td colspan="2">
                    <br />
                    <input type="submit" value="שלח" />
                </td>
            </tr>
        </table>
        <br />
        <p><%=title %></p>
        <br />
        <%=allUsersString5%>   
        <br />
        <br />
    </center>
    </form>
</asp:Content>
