﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="generalinfo.aspx.cs" Inherits="generalinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        img
        {
            width: 400px;
        }
        table
        {
            width: 1200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <h1>
        היכרות עם עולם הגלישה:</h1>
    <br />
    <p>
        גלישת גלים היא ספורט ופעילות פנאי פופולרית המתבצעת באמצעות גלשן. הגולש עומד על גלשן,
        הנושא אותו על פני גל.<br />
        העדויות המוקדמות ביותר לגלישה הם באיים הפולינזים.
        <br />
        משום שספורט הגלישה נערך בכל חמשת היבשות בעולם הוא הוגדר כספורט אולימפי ויהווה תחום
        ספורטיבי נושא פרסים החל מאולימפיאדת טוקיו 2020.
        <br />
        תעשיית הגלישה העולמית מגלגלת מיליארדים של דולרים מידי שנה החל מייצור ושיווק בתחום
        הטקסטיל וכלי בתחרויות, ציוד גלישה ותיירות.
    </p>
    <br />
    <h2>
        תחרויות גלישה מסביב לעולם:</h2>
    <p>
        ארגון הגלישה הבינלאומי מפעיל מדי שנה מספר סבבי תחרות, ובכל סבב מספר תחרויות לרמות
        דירוג שונות, הן בקטגורית גברים והן בנשים.
        <br />
        הסבב בו מתחרים הגולשים בעלי הדירוג הגבוה ביותר הוא סבב הסי טי שבו מתחרים מדי שנה
        36 הגולשים הטובים ביותר מכל העולם.
        <br />
        מדי שנה נערכות בסבב זה 10 תחרויות שמתקיימות בכל אזורי העולם. התחרויות מתבצעות בפורמט
        דומה לתחרויות בענפי ספורט כגון התעמלות קרקע
        <br />
        או מכשירים: הגולשים מדגימים את ביצועיהם בפרק זמן קצוב מראש וצוות שופטים מחלק להם
        ציונים על פי מספר כללים וקריטריונים כמו:מהירות הגלישה וגובה הגל.<br />
        התחרות שזוכה לאהדה והפרסום הגבוה ביותר העולם היא: (כמובן שהיא חלק מהסבב שהזכרתי)<br />
        תחרות הפייפ מאסטרס: תחרות שנערכת בחוף פייפליין,אוהו, הוואי. גלישת הגלים שם מסוכנת
        בגלל גובה הגלים בים והיותם נשברים על שונית אלמוגים חדה.<br />
        התחרות מתקיימת כל שנה בחודש דצמבר ואליה מגיעים הרבה אוהדי גלישה מכל העולם.
    </p>
    <center>
        <table>
            <tr>
                <td>
                    <img src="images/comp.jpg" />
                </td>
                <td>
                    <img src="images/comp2.jpg" />
                </td>
                <td>
                    <img src="images/comp3.jpg" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <h1>
            מספר הכניסות לדף זה הוא:
            <%=Application["counterGeneral"]%></h1>
    </center>
</asp:Content>