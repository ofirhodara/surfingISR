<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="boards.aspx.cs" Inherits="second" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        table
        {
            text-align: center;
            font-family: 'Trebuchet MS' , 'Lucida Sans Unicode' , 'Lucida Grande' , 'Lucida Sans' , Arial, sans-serif;
        }
        img
        {
            width: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <h1>
        גלישת הגלים מתבצעת באמצעות גלשני גלים ייעודים אשר מחולקים למספר קטגוריות:</h1>
    <br />
    <ol>
        <li>גלשנים קלאסים: הסוג הנפוץ ביותר. גלשן קטן בעל יכולת תמרון גבוהה.</li>
        <li>גלשני פאן: בעלי יותר נפח וציפה ולפיכך קלים לגלישה ומתאימים לשלבי הלימוד המוקדמים.</li>
        <li>גלשנים ארוכים - בשל גודלם, קשים יותר לתמרון. מאידך, כושר הציפה הגבוה של גלשנים אלו
            מעמיד לרשות הגולש מגוון רחב יותר של אפשרויות.</li>
        <li>גלשני גאן- אלו גלשנים המיועדים לגלים גבוהים החל מ-4 מטר. גלשנים אלו ארוכים (פחות
            מגלשנים ארוכים) יחסית צרים ומחודדים בקצוות.</li>
    </ol>
    <br />
    <br />
    <br />
    <center>
        <table>
            <tr>
                <td>
                    <img src="images/short_b.jpg" />
                </td>
                <td>
                    <img src="images/fun_b.jpg" />
                </td>
                <td>
                    <img src="images/long_b.jpg" />
                </td>
                <td>
                    <img src="images/gun_b.jpg" />
                </td>
            </tr>
            <tr>
                <td>
                    גלשן קלאסי
                </td>
                <td>
                    גלשן פאן
                </td>
                <td>
                    גלשן ארוך
                </td>
                <td>
                    גלשן גאן
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <h1>
            מספר הכניסות לדף זה הוא:
            <%=Application["counterBoards"]%></h1>
    </center>
</asp:Content>
