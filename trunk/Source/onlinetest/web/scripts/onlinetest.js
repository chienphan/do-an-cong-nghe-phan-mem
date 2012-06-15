/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function show_confirm() {
    var r=confirm("Ban co muon xoa?");
    if (r==true) {
        return true;
    } 
    else {
        return false;
    }
}

function getCookie(c_name)
{
    var i,x,y,ARRcookies=document.cookie.split(";");
    for (i=0;i<ARRcookies.length;i++)
    {
        x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
        y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
        x=x.replace(/^\s+|\s+$/g,"");
        if (x==c_name)
            return unescape(y);
    }
}

function setCookie(c_name,value,exdays)
{
    //var exdate=new Date();
    //exdate.setDate(exdate.getDate() + exdays);
    var c_value=escape(value);// + ((exdays==null) ? "" : "; expires="+exdate.toUTCString());
    document.cookie=c_name + "=" + c_value;
}

function checkCookie(value)
{
    var time=getCookie("time");
    if (time <= 0 || time == null)
        setCookie("time",value,1);
}

var delay = 1000;	
var time;
var s;
var m;
var ttime;
var txt;
function nopbai()
{
    var r=confirm('Ban muon nop bai?');
    if (r==true) {
        setCookie("time","0000",1);
        return true;
    } 
    else {
        return false;
    }
}

function StartTheTimer()
{
    time = parseInt(getCookie("time"),10);
    s=0;
    m=0;
    s = time % 10;
    time = parseInt(time/10);
    s = s + time % 10 * 10;
    time = parseInt(time/10);
    m = time % 10;
    time = parseInt(time/10);
    m = m + time % 10 * 10;
    if (s==0 & m==0){
        alert('het thoi gian');
        setCookie("time","0000",1);
        document.forms['form4'].submit();
    }
    if (s == 0){
        s = 59;
        m--;
    }
    else s--;       
    ttime=m+"";

    if(m<10)
        txt = "00:0" + m + ":";
    else txt = "00:" + m + ":";
    if (s <10){
        txt+="0"+s;
        ttime+="0"+s;
    }
    else{
        txt+=s;
        ttime+=s;
    }
    document.getElementById('clock').innerHTML = txt;
    setCookie("time",ttime,1);
    self.setTimeout("StartTheTimer()", delay);
}

