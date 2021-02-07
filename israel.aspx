<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="israel.aspx.cs" Inherits="israel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        img
        {
            width: 450px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <h1>
        גלישת הגלים במדינת ישראל:</h1>
    <br />
    <p style="text-align: center">
        בישראל, הים המתאים ביותר לגלישה הוא הים התיכון לאחר סערות, כאשר אין רוח והגלים עולים
        באופן מסודר. מצב זה ניקרא בשפה המשותפת לגולשים בישראל "סוואל" . מכיוון שחופי ישראל
        הם בשולי הים התיכון ולא באחד האוקיינוסים, הגלים בישראל הם קטנים ביחס לגלים עליהם
        מקובל לגלוש בעולם. כמו כן, הרוח היא זו שיוצרת את הגלים ונותנת להם את צורתם. הרוח
        הטובה ביותר בישראל ליצירת גלים היא רוח דרומית-מערבית או מערבית. רוח זו היא רוח מסוג
        "אונ-שור" שבאה מהים לכיוון החוף ומייצרת גלים.
    </p>
    <br />
    <br />
    <table>
        <tr>
            <td>
                <h2>
                    חופי גלישה מומלצים בישראל:</h2>
                <ol>
                    <li>חוף קונטיקי:נמצא בנתניה בעל שבירת חוף ימינה ושמאלה. החוף מוגן ע"י שובר גלים ועובד
                        מצויין ברוח דרומית מזרחית, טוב בכל גובה כמעט. כאשר הים גבוה, הגל נשבר בצורה צינורית
                        מצויינת. ומתאים לכל רמות הגלישה. </li>
                    <li>חוף בקדור:נמצא בעיר חיפה. בעל שבירת ריף חזקה לימין. בעל שבירת ריף חזקה לימין. מומלץ
                        בעיקר בסערות החורף, כאשר נושבת רוח הדרומית ההופכת את חווית הגלישה למאתגרת ועוצמתית.
                        מתאים לגולשים מנוסים. </li>
                </ol>
            </td>
            <td>
                <img src="images/kontiki.jpg" />
            </td>
            <td>
                <img src="images/haifa.jpg" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <h1 style="text-align: center">
        מספר הכניסות לדף זה הוא:
        <%=Application["counterIsrael"]%></h1>
</asp:Content>
