<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form11" runat="server" onsubmit="return bdikot()">
    <br />
    <h1>
        הרשמה לאתר:</h1>
    <br />
    <center>
        <table>
            <tr>
                <td>
                    שם מלא:
                </td>
                <td>
                    <input name="name_1" id="name_1" />
                </td>
                <td>
                    <input type="button" id="wrong_name" name="wrong_name" style="display: none" />
                </td>
            </tr>
            <tr>
                <td>
                    תעודת זהות:
                </td>
                <td>
                    <input name="tz_1" id="tz_1" />
                </td>
                <td>
                    <input type="button" id="wrong_tz" name="wrong_tz" style="display: none" />
                </td>
            </tr>
            <tr>
                <td>
                    מין:
                </td>
                <td>
                    <input type="radio" name="sex" id="male1" checked="checked" value="male" />זכר
                    <input type="radio" name="sex" id="female1" value="female" />נקבה
                </td>
                <td>
                    <input type="button" id="wrong_sex" name="wrong_sex" style="display: none" />
                </td>
            </tr>
            <tr>
                <td>
                    כתובת מייל:
                </td>
                <td>
                    <input name="email" id="email" />
                </td>
                <td>
                    <input type="button" id="wrong_email" name="wrong_email" style="display: none" />
                </td>
            </tr>
            <tr>
                <td>
                    סיסמא:
                </td>
                <td>
                    <input type="password" name="password1" id="password1" />
                </td>
                <td>
                    <input type="button" id="wrong_P" name="wrong_P" style="display: none" />
                </td>
            </tr>
            <tr>
                <td>
                    אימות סיסמא:
                </td>
                <td>
                    <input type="password" name="password2" id="password2" />
                </td>
                <td>
                    <input type="button" id="wrong_2P" name="wrong_2P" style="display: none" />
                </td>
            </tr>
            <tr>
                <td>
                    מהו מספר השנים שבהן אתה גולש?
                </td>
                <td>
                    <input type="button" name="wrong_year" id="wrong_year" style="display: none" />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="surf_time" id="zero_five" value="zero_five2" checked="checked" />5-0
                    <br />
                    <input type="radio" name="surf_time" id="five_ten" value="five_ten2" />15-10
                    <br />
                    <input type="radio" name="surf_time" id="fifteen_twenty" value="fifteen_twenty2" />20-15
                    <br />
                    <input type="radio" name="surf_time" id="aboveTwenty" value="aboveTwenty2" />20+
                    <br />
                    <input type="radio" name="surf_time" id="no_surfer" value="no_surfer2" />כלל לא
                    גולש
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    מהו הקשר שלך לעולם הגלישה?
                </td>
                <td>
                    <select name="connection" id="connection">
                        <option value="choose" selected="selected">בחר</option>
                        <option value="c_surfer">גולש</option>
                        <option value="c_shop">בעל חנות גלישה</option>
                        <option value="c_sealover">אוהב ים</option>
                        <option value="c_interestIn">מתעניין בענף</option>
                        <option value="c_none">אין לי קשר לעולם הגלישה</option>
                    </select>
                </td>
                <td>
                    <input type="button" id="wrong_C" name="wrong_C" style="display: none" />
                </td>
            </tr>
            <tr style="text-align: center">
                <td colspan="2">
                    <br />
                    <br />
                    <input type="submit" value="שלח" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <p>
            <%=IfOk%></p>
    </center>
    </form>
</asp:Content>
