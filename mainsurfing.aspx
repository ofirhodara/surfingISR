<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="mainsurfing.aspx.cs" Inherits="third" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        table
        {
            background-color: aqua;
        }   
        p
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <h1>
        ברוך הבא לאתר גלישת הגלים הישראלי</h1>
    <br />
    <p>
        האתר יעסוק בנושא ענף גלישת הגלים.<br />
        מטרת האתר היא לתת מענה לגולשי הגלים שרוצים לקבל מידע אמין על מצב הים בישראל ובנוסף
        לקבל מידע על חנויות,חופים ותחרויות גלישה.<br />
        ובנוסף לכך לחשוף אנשים שאינם מכירים את הענף ליסודות ענף הגלישה והיופי שבו.
    </p>
    <br />
    <br />
    <center>
        <table>
            <tr>
                <td>
                    <img src="images/kellyslater.jpg" />
                </td>
                <td>
                    <img src="images/israel.png" />
                </td>
                <td>
                    <img src="images/quikprogoldcoast.jpg" />
                </td>
            </tr>
        </table>
        <h1>
            מזמין אותכם לצפות ולהתרשם!</h1>
    </center>
</asp:Content>
