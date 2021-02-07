<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myself.aspx.cs" Inherits="first" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        h2 {
            color: purple;
            background-color: aquamarine;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <h1>בנימה אישית:</h1>
    <table>
        <tr>
            <td>רציתי לספר לכם חשבונות האתר על האהבה שלי לים ולגלישת הגלים.<br />
                קוראים לי אופיר חודרה וגדלתי בישוב פרדסיה,
        ישוב קטן ליד נתניה.המנהג של משפחתי הוא ללכת לים ביום שבת בבוקר
        ובכתוצאה מכך האהבה שלי לים התפתחה כבר מגיל צעיר.
        התחלתי לגלוש בגיל 7 לאחר שראיתי פרסומת שמזמינה ילדים בגילי לבוא להצטרף לבית הספר הגלישה "אקסטרים" 
        אשר עובד בחוף גבעת אולגה שליד חדרה.אני זוכר שלאחר זמן קצר מאוד ידעתי שהספורט הזה הוא משהו שאני רוצה לעשות כל החיים.
        כיום אני גולש תחרותי אשר מתאמן 3 פעמים בשבוע באופן סדיר (בכל ימות השנה) עם המאמן שלי בחוף "קונטיקי" בנתניה.
        אני גולש על גלשנים של חברת "אינטרסרף" בגובה 5,11 פיט והחוף הגלישה המועדף עליי הארץ הוא חוף "רסקו" שבצפון נתניה.
        במהלך חמשת השנים בהם אני מתחרה בסבב אליפות הארץ הספקתי להתחרות במספר רב של תחרויות בחופים שונים בארץ,ולזכות מקום ראשון
        בתחרות הממונת ע"י חברת הגלישה האוסטרלית "בילבונג" אשר התקיימה בחוף נירוונה,שבחיפה ובנוסף לטוס למחנות אימונים בעולם במדינות כמו:פורטוגל וסרי לנקה עם משפחתי. 
        בנוסף לכך בחופשות הקיץ אני נוהג לעבוד בקייטנות גלישה בחוף "סירונית" שבנתניה בשביל להעביר את הידע והניסיון שלי לדור הצעיר.<br />
                <br />
            </td>
            <td>
                <video src="MyVideo.mp4" controls height="450" width="450" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <h2>הסרטון צולם בחוף "מיריסה" סרי לנקה,והתמונות צולמו בחוף "קונטיקי" שבנתניה.</h2>
    <center>
        <table>
            <tr>
                <td>
                    <img src="images/ofir1.jpg" /></td>
                <td>
                    <img src="images/ofir2.jpg" /></td>
                <td>
                    <img src="images/ofir3.jpg" /></td>
            </tr>
        </table>
   
    <br /><br /><br />    
     
      <h1>מספר הכניסות לדף זה הוא: <%=Application["counterOfir"]%></h1> 

    </center>
</asp:Content>

