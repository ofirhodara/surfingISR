﻿msg1 = "אתה יכול להשתמש רק במספרים";
msg2 = "האורך של תעודת זהות הוא 9 ספרות";
msg3 = "שדה חובה";
msg5 = "הסיסמאות לא מתאימות";
msg6 = "המייל לא יכול להתחיל בשטרודל";
msg7 = "המייל לא יכול להסתיים בשטרודל";
msg8 = "המייל חייב לכלול נקודה";
msg9 = "המייל חייב לכלול שטרודל";
msg10 = "המייל לא יכול להתחיל בנקודה";
msg11 = "המייל לא יכול להסתיים בנקודה";
msg12 = "הסיסמא חייבת לכלול בין 4-10 תווים";
msg13 = "שם מלא חייב להיות מעל 4 תויים כולל";
msg14 = "המייל חייב לכלול מעל 5 תווים";
msg15 = "המחרוזת לא יכולה להכיל אותיות בעברית או תויים מיוחדים";
msg16 = "המחרוזת לא יכולה להכיל אותיות באנגלית או תויים מיוחדים";

function sdehova(tevaW) {
    tevaW.value = msg3;
    tevaW.style.display = "";
}
function isValidString_Hebrew(str) {
    var badStr = "אבגדהוזחטיכךלמםנןסעפצקרשת?><{}[]+_()*&^%$";  
 	var i = 0, p;
    while (i < str.length) {
        p = badStr.indexOf(str.charAt(i)); if (p != -1)
            return false;
        i++;
    }
    return true;
}
function isValidString_english(str) {
    var badStr = "qwertyuioplkjhgfdsazxcvbnm?><{}[]+_()*&^%$";
    var i = 0, p;
    while (i < str.length) {
        p = badStr.indexOf(str.charAt(i)); if (p != -1)
            return false;
        i++;
    }
    return true;
}
function strudel_(stru, lenght1) {
    ok = true;
    if (stru == -1) {
        wrong_email.value = msg9;
        wrong_email.style.display = "";
        ok = false;
    }
    else {
        if (stru == 0) {
            wrong_email.value = msg6;
            wrong_email.style.display = "";
            ok = false;
        }
        if (stru == lenght1 - 1) {
            wrong_email.value = msg7;
            wrong_email.style.display = "";
            ok = false;
        }
    }
    return ok;
}
function point_(dot1, lenght2) {

    ok = true;
    if (dot1 == -1) {
        wrong_email.value = msg8;
        wrong_email.style.display = "";
        ok = false;
    }
    else {
        if (dot1 == 0) {
            wrong_email.value = msg10;
            wrong_email.style.display = "";
            ok = false;
        }
        if (dot1 == lenght2 - 1) {
            wrong_email.value = msg11;
            wrong_email.style.display = "";
            ok = false;
        }
    }
    return ok;
}
function validid() {
    ok = true;
    st = tz_1.value;
    x = st.length;
    if (x == 0) {
        sdehova(wrong_tz);
        ok = false;
    }
    else {
        if (isNaN(st) == true) {
            wrong_tz.value = msg1;
            wrong_tz.style.display = "";
            ok = false;
        }
        else {
            if (x != 9) {
                ok = false;
                wrong_tz.value = msg2;
                wrong_tz.style.display = "";
            }
        }
    }
    if (ok)
        wrong_tz.style.display = "none";
    return ok;
}
function validname() {
    ok = true;
    st = name_1.value;
    x = st.length;
    if (x == 0) {
        sdehova(wrong_name);
        ok = false;
    }
    else {
        if (x < 4) {
            wrong_name.value = msg13;
            wrong_name.style.display = "";
            ok = false;
        }
        if (!isValidString_english(st)) {
            wrong_name.value = msg16;
            wrong_name.style.display = "";
            ok = false;
        }
    }
    if (ok) wrong_name.style.display = "none";
    return ok;
}
function validmail() {

    ok = true;
    st = email.value;
    x = st.length;
    dot_real = st.indexOf('.');
    stru_real = st.indexOf('@');
    if (x == 0) {
        ok = false;
        sdehova(wrong_email);
    }
    else {
        if (x < 6) {
            ok = false;
            wrong_email.value = msg14;
            wrong_email.style.display = "";
        }
        else {
            ok = strudel_(stru_real, x);
            if (ok)
                ok = point_(dot_real, x);
        }
    }
    if (ok)
        wrong_email.style.display = "none";
    return ok;
}  
function password() {
    ok = true;
    st = password1.value;
    x = st.length;
    if (x == 0) {
        sdehova(wrong_P);
        ok = false;
    }
    else {

        if (x < 4 || x > 10) {
            wrong_P.value = msg12;
            wrong_P.style.display = "";
            ok = false;
        }
        else
        {
            if (!isValidString_Hebrew(st)) {
                wrong_P.value = msg15;
                wrong_P.style.display = "";
                ok = false;
            }
        }
    }
    if (ok)
        wrong_P.style.display = "none";
    return ok;
}
function passwordAgain() {
    ok = true;
    st1 = password1.value;
    st2 = password2.value;
    x = st2.length;
    if (x == 0) {
        sdehova(wrong_2P);
        ok = false;
    }
    else {
        if (st1 != st2) {
            wrong_2P.value = msg5;
            wrong_2P.style.display = "";
            ok = false;
        }
    }
    if (wrong_P.style.display == "none" && st1 == st2 && wrong_2P.style.display == "") {
        wrong_2P.style.display = "none";
        ok = false;
    }
    return ok;
}
function connectTo_s() {
    ok = true;
    if (connection.selectedIndex == 0) {
        sdehova(wrong_C);
        ok = false;
    }
    else wrong_C.style.display = "none";
    return ok;
}
function bdikot() {
    ok1 = validid();
    ok2 = validname();
    ok3 = validmail();
    ok4 = password();
    ok5 = passwordAgain();
    ok6 = connectTo_s();
    return ok1 && ok2 && ok3 && ok4 && ok5 && ok6;
}
function SignEmaill() {
    ok = true;
    st1 = signEmail.value;
    x = st1.length;
    if (x == 0) {
        ok = false;
        sdehova(wrong_signEmail);
    }
    else {
        wrong_signEmail.style.display = "none";
        ok = true;
    }
    return ok;

}
function SignSisma() {
    ok = true;
    st1 = signPasswod.value;
    x = st1.length;
    if (x == 0) {
        ok = false;
        sdehova(wrong_signPasswod);
    }
    else {
        wrong_signPasswod.style.display = "none";
        ok = true;
    }
    return ok;
}
function bdikotSign() {
    ok1 = SignSisma();
    ok2 = SignEmaill();
    return ok1 && ok2;
}
function checkNameDelete() {
    ok = true;
    st1 = name_2.value;
    x = st1.length;
    if (x == 0) {
        sdehova(wrong_name2);
        ok = false;
    }
    return ok;
}
function checkPassDelete() {
    ok = true;
    st1 = passs.value;
    x = st1.length;
    if (x == 0) {
        sdehova(wrong_passs);
        ok = false;
    }
    return ok;
}
function bdikotDelete() {
    ok1 = checkNameDelete();
    ok2 = checkPassDelete();
    return ok1 && ok2;
}
