<HTML>
<HEAD>
<TITLE>MSNBC</TITLE>

<script language=JavaScript>

var hi = 0;
var much=100;
var msecs = 25;
var currCount = 0;	
var i = 0;
var rev = 5;

colors1 = new Array(6);	
colors1[0]="#000000";
colors1[1]="#333333";
colors1[2]="#666666";
colors1[3]="#999999";
colors1[4]="#CCCCCC";
colors1[5]="#FFFFFF";
colors2 = new Array(6);	
colors2[0]="#000000";
colors2[1]="#333300";
colors2[2]="#665500";
colors2[3]="#997700";
colors2[4]="#CC9900";
colors2[5]="#FFCC00";
colors3 = new Array(6);	
colors3[0]="#000000";
colors3[1]="#332200";
colors3[2]="#663300";
colors3[3]="#994400";
colors3[4]="#CC5500";
colors3[5]="#FF6600";
colors4 = new Array(6);	
colors4[0]="#000000";
colors4[1]="#330010";
colors4[2]="#550019";
colors4[3]="#770020";
colors4[4]="#990028";
colors4[5]="#CC0033";
colors5 = new Array(6);	
colors5[0]="#000000";
colors5[1]="#222222";
colors5[2]="#333311";
colors5[3]="#444455";
colors5[4]="#555577";
colors5[5]="#666699";
colors6 = new Array(6);	
colors6[0]="#000000";
colors6[1]="#101133";
colors6[2]="#193355";
colors6[3]="#205577";
colors6[4]="#287799";
colors6[5]="#3399CC";
colors7 = new Array(6);	
colors7[0]="#000000";
colors7[1]="#001110";
colors7[2]="#003319";
colors7[3]="#005520";
colors7[4]="#007728";
colors7[5]="#009933";

function fTi0(q) {
	if (q==1) {hi=1;much=32};
	Quote0.style.visibility = "visible";
	if (i<6) {
		Quote0.style.color = colors4[i];
		i++;
		timerID = setTimeout( "fTi0()", (2*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi0b()", (10*much))
	}
}

function fTi0b() {
	Quote0b.style.visibility = "visible";
	if (i<6) {
		Quote0b.style.color = colors4[i];
		i++;
		timerID = setTimeout( "fTi0b()", (2*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi0c()", (41*much))
	}
}

function fTi0c() {
	Quote0c.style.visibility = "visible";
	if (i<6) {
		Quote0c.style.color = colors1[i];
		i++;
		timerID = setTimeout( "fTi0c()", (4*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi1()", (32*much))
	}
}               

function fTi1() {
	Quote0.style.visibility = "hidden";
	Quote0b.style.visibility = "hidden";
	Quote1.style.visibility = "visible";
	if (i<6) {
		Quote1.style.color = colors2[i];
		i++;
		timerID = setTimeout( "fTi1()", (2*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi1b()", (9*much))
	}
}

function fTi1b() {
	Quote1b.style.visibility = "visible";
	if (i<6) {
		Quote1b.style.color = colors3[i];
		i++;
		timerID = setTimeout( "fTi1b()", (2*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi1c()", (12*much))
	}
}

function fTi1c() {
	Quote0c.style.visibility = "hidden";
	Quote1c.style.visibility = "visible";
	if (i<6) {
		Quote1c.style.color = colors1[i];
		i++;
		timerID = setTimeout( "fTi1c()", (2*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi2()", (57*much))
	}
} 

function fTi2() {
	Quote1.style.visibility = "hidden";
	Quote1b.style.visibility = "hidden";
	Quote2.style.visibility = "visible";
	if (i<6) {
		Quote2.style.color = colors5[i];
		i++;
		timerID = setTimeout( "fTi2()", 50)
	}
	else {
	i=0;
	timerID = setTimeout( "fTi2b()", (19*much))
	}
}

function fTi2b() {
	Quote2b.style.visibility = "visible";
	if (i<6) {
		Quote2b.style.color = colors5[i];
		Quote1c.style.color = colors1[rev];
		i++;
		rev--;
		timerID = setTimeout( "fTi2b()", (3*much))
	}
	else {
	i=0;
	rev=5;
	timerID = setTimeout( "fTi2c()", (12*much))
	}
}
function fTi2c() {
	Quote1c.style.visibility = "hidden";
	Quote2c.style.visibility = "visible";
	if (i<6) {
		Quote2c.style.color = colors4[i];
		i++;
		timerID = setTimeout( "fTi2c()", (4*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi2d()", (1*much))
	}
}

function fTi2d() {
	Quote2d.style.visibility = "visible";
	if (i<6) {
		Quote2d.style.color = colors4[i];
		i++;
		timerID = setTimeout( "fTi2d()", (1*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi2e()", (1*much))
	}
}

function fTi2e() {
	Quote2e.style.visibility = "visible";
	Quote2f.style.visibility = "visible";
	if (i<6) {
		Quote2e.style.color = colors4[i];
		Quote2f.style.color = colors1[i];
		i++;
		timerID = setTimeout( "fTi2e()", (1*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi3()", (14*much))
	}
}

function fTi3() {
	Quote2.style.visibility = "hidden";
	Quote2b.style.visibility = "hidden";
	Quote2c.style.visibility = "hidden";
	Quote2d.style.visibility = "hidden";
	Quote2e.style.visibility = "hidden";
	Quote3.style.visibility = "visible";
	if (i<6) {
		Quote3.style.color = colors7[i];
		i++;
		timerID = setTimeout( "fTi3()", (3*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi3b()", (7*much))
	}
}

function fTi3b() {
	Quote3b.style.visibility = "visible";
	if (i<6) {
		Quote3b.style.color = colors6[i];  
		Quote2f.style.color = colors1[rev];
		i++;
		rev--;
		timerID = setTimeout( "fTi3b()", (2*much))
	}
	else {
	i=0;
	rev=5;
	timerID = setTimeout( "fTi3c()", (19*much))
	}
}

function fTi3c() {
	Quote2f.style.visibility = "hidden";
	Quote3c.style.visibility = "visible";
	if (i<6) {
		Quote3c.style.color = colors7[i];
		i++;
		timerID = setTimeout( "fTi3c()", (3*much))
	}
	else {
	i=0;

	timerID = setTimeout( "fTi3d()", (9*much))
	}
}

function fTi3d() {
	Quote3d.style.visibility = "visible";
	if (i<6) {
		Quote3d.style.color = colors1[i];
		i++;
		timerID = setTimeout( "fTi3d()", (3*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi4()", (12*much))
	}
}

function fTi4() {
	Quote3.style.visibility = "hidden";
	Quote3b.style.visibility = "hidden";
	Quote3c.style.visibility = "hidden";
	Quote4.style.visibility = "visible";
	if (i<6) {
		Quote4.style.color = colors2[i];
		i++;
		timerID = setTimeout( "fTi4()", (4*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi4b()", (32*much))
	}
}

function fTi4b() {
	Quote4b.style.visibility = "visible";
	if (i<6) {
		Quote4b.style.color = colors3[i];  
		Quote3d.style.color = colors1[rev];
		i++;
		rev--;
		timerID = setTimeout( "fTi4b()", (2*much))
	}
	else {
	i=0;
	rev=5;
	timerID = setTimeout( "fTi4c()", (12*much))
	}
}

function fTi4c() {
	Quote4c.style.visibility = "visible";
	if (i<6) {
		Quote3d.style.visibility = "hidden";
		Quote4c.style.color = colors1[i];
		i++;
		timerID = setTimeout( "fTi4c()", (3*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi5()", (20*much))
	}
}

function stopmus() {
	//document.msnbcra.DoStop();
	//doattach();
}

function fTi5() {
	Quote4.style.visibility = "hidden";
	Quote4b.style.visibility = "hidden";
	Quote4c.style.visibility = "hidden";
	Quote5.style.visibility = "visible";
	if (i<6) {
		Quote5.style.color = colors1[i];
		i++;
		timerID = setTimeout( "fTi5()", (4*much))
	}
	else {
	i=0;
	timerID = setTimeout( "fTi5b()", (18*much))
	}
}

function fTi5b() {
	Quote5b.style.visibility = "visible";
	if (i<6) {
		Quote5b.style.color = colors4[i];  
		i++;
		timerID = setTimeout( "fTi5b()", (2*much))
	}
	else {
	i=0;
	if (hi==0) {timerID = setTimeout( "stopmus()", (23*much))}
		else {doLights();}
	}
} 

function rply() {
	doTrans()
	raplyID = setTimeout( "iotwwg()", 7900)
}

function iotwwg() {
	timerID = setTimeout( "fTi0(1)", (1000))
}

function fader () {
	clearTimeout(raplyID);
	opdiss.style.display = "none";
	shade.style.display = "none";
	litlogo.style.display = "none";
	timerID = setTimeout( "fTi0(0)", 2000)

} 
</script>

</HEAD>

<BODY BGCOLOR=BLACK document onLoad="rply();">   


<!---------------- PAGE TEXT & IMAGES  ----------------->   

<DIV id=litlogo style="POSITION:ABSOLUTE; TOP:30%; LEFT:30%; WIDTH:280; HEIGHT:144; visibility:hidden;">
	<img border=0 width=203 height=144 src="msnb.gif">
</DIV>

<DIV id=divlitlogo2 style="POSITION:ABSOLUTE; TOP:30%; LEFT:30%; WIDTH:280; HEIGHT:144; visibility:visible;">
	<IMG ID=litlogo2 src=msnb.gif style="filter:revealTrans(Duration=7.8, Transition=12);">
</DIV>

<DIV id=Quote0 style="container:positioned;	position:absolute; height:20%; top:140px; left:10%;
font-family:Arial; font-size:42px; line-height:35px; color:black; visibility:hidden;">	
Creative Rebirth
</DIV>

<DIV id=Quote0b style="container:positioned;	position:absolute; height:20%;  top:180px; left:25%;
font-family:Arial; font-size:38px; line-height:35px; font-weight:bold; color:black; visibility:hidden;">	
of broadcast news.
</DIV>  

<DIV id=Quote0c style="container:positioned;	position:absolute; height:20%;  top:220px; left:110px;
font-family:Arial; font-size:28px; line-height:35px; font-weight:bold; color:black; visibility:hidden;">	
The <i>best</i> of NBC news.
</DIV>

<DIV id=Quote1 style="container:positioned;	position:absolute; height:20%;  top:20px; left:10px;
font-family:'Trebuchet MS', Arial; font-size:32px; line-height:35px; color:black; visibility:hidden;">	
MSNBC News<p>
DRAMATICALLY DIFFERENT
</DIV>

<DIV id=Quote1b style="container:positioned;	position:absolute; height:20%;  top:45px; left:90px;
font-family:'Trebuchet MS', Arial; font-size:20px; line-height:35px;  color:black; visibility:hidden;">	
a new way of delivering the news<p>
broadcast, cable, Internet
</DIV>

<DIV id=Quote1c style="container:positioned;	position:absolute; height:20%;  top:128px; left:240px;
font-family:'Trebuchet MS', Arial; font-size:15px; line-height:35px; font-weight: bold;  color:black; visibility:hidden;">	
TOM BROKAW
</DIV>

<DIV id=Quote2 style="container:positioned;	position:absolute; height:20%;  top:180px; left:15px;
font-family:'Trebuchet MS', Arial; font-size:35px; line-height:35px; font-weight: bold;  color:black; visibility:hidden;">	 
LIBERATING
</DIV>

<DIV id=Quote2b style="container:positioned;	position:absolute; height:20%;  top:240px; left:45px;
font-family:'Trebuchet MS', Arial; font-size:35px; line-height:35px; font-weight: bold;  color:black; visibility:hidden;">	 
BREAKTHROUGH
</DIV>

<DIV id=Quote2c style="container:positioned;	position:absolute; height:20%;  top:210px; left:30px; margin-right:-100;
font-family:'Trebuchet MS', Arial; font-size:18px; line-height:38px; font-weight: normal;  color:black; visibility:hidden;">	 
something new - NBC news and Microsoft technology<p>
<b>YOUR</b>
</DIV>

<DIV id=Quote2d style="container:positioned;	position:absolute; height:20%;  top:290px; left:55px;
font-family:'Trebuchet MS', Arial; font-size:20px; line-height:35px; font-weight: bold;  color:black; visibility:hidden;">	 
NEWS
</DIV>

<DIV id=Quote2e style="container:positioned;	position:absolute; height:20%;  top:314px; left:75px;
font-family:'Trebuchet MS', Arial; font-size:20px; line-height:35px; font-weight: bold;  color:black; visibility:hidden;">	 
PERSONALIZED
</DIV>

<DIV id=Quote2f style="container:positioned;	position:absolute; height:20%;  top:334px; left:185px;
font-family:'Trebuchet MS', Arial; font-size:15px; line-height:35px; font-weight: bold;  color:black; visibility:hidden;">
KATIE COURIC
</DIV> 


<DIV id=Quote3 style="container:positioned;	position:absolute; height:20%;  top:130px; left:15%;
font-family:'Trebuchet MS', Arial; font-size:32px; line-height:40px; font-weight: bold;  color:black; visibility:hidden;">
Exciting<p> 
Experienced newsmakers
</DIV>

<DIV id=Quote3b style="container:positioned;	position:absolute; height:20%;  top:161px; left:25%;
font-family:'Trebuchet MS', Arial; font-size:32px; line-height:40px; font-weight: bold;  color:black; visibility:hidden;">
interactive<p>
multimedia
</DIV>

<DIV id=Quote3c style="container:positioned;	position:absolute; height:20%;  top:249px; left:23%;
font-family:'Trebuchet MS', Arial; font-size:32px; line-height:41px; font-weight: bold;  color:black; visibility:hidden;">
vital information
</DIV>

<DIV id=Quote3d style="container:positioned;	position:absolute; height:20%;  top:278px; left:300px;
font-family:'Trebuchet MS', Arial; font-size:15px; line-height:41px; font-weight: bold;  color:black; visibility:hidden;">
JANE PAULEY
</DIV>

<DIV id=Quote4 style="container:positioned;	position:absolute; height:20%;  top:50px; left:10px; margin-right:-100;
font-family:'Trebuchet MS', Arial; font-size:30px; line-height:35px; color:black; visibility:hidden;">	
No.1 news made for the medium<p>
Setting a new standard
</DIV>

<DIV id=Quote4b style="container:positioned;	position:absolute; height:20%;  top:78px; left:70px;
font-family:'Trebuchet MS', Arial; font-size:25px; line-height:35px;  color:black; visibility:hidden;">	
As it's happening<p>
It goes right on to the air
</DIV>

<DIV id=Quote4c style="container:positioned;	position:absolute; height:20%;  top:158px; left:260px;
font-family:'Trebuchet MS', Arial; font-size:15px; line-height:35px; font-weight: bold;  color:black; visibility:hidden;">	
BRIAN WILLIAMS
</DIV>        
 
<DIV id=Quote5 style="container:positioned;	position:absolute; height:20%;  top:20%; left:10%;
font-family:'Trebuchet MS', Arial; font-size:30px; line-height:35px;  color:black; visibility:hidden;">	
When you really want to know.
</DIV> 

<DIV id=Quote5b style="container:positioned; position:absolute; height:20%; width:40%; top:280px; left:40%;
font-family:'Trebuchet MS', Arial; font-size:20px; line-height:35px; font-weight: bold;  color:black; visibility:hidden;">	
<center>www.msnbc.com<br>
<script>
if (navigator.userAgent.indexOf("MSIE 4.0b2") > 0 )
{document.writeln("<a href=\"http://www.msnbc.com/tools/channel/msnbc-cdf.asp\"><img vspace=20 border=0 src=\"iechan.gif\"></a>") }
else 
{document.writeln("<a href=\"javascript:window.external.addChannel('http://www.msnbc.com/tools/channel/msnbc-cdf.asp')\"><img vspace=20 border=0 src=\"iechan.gif\"></a>") }
</script>
&nbsp; <a href="msnbccov.htm"><img border=0 src="viewsam.gif"></a></center>
</DIV> 




<DIV id=RAFILE style="POSITION:ABSOLUTE; TOP:99%; LEFT:99%; WIDTH:10; HEIGHT:10; visibility:visible;">
&nbsp;
</DIV>


<script>

var light;
var g=0;
var lightinterval = 100;
var lightcount = 0;
var posit = -30;
var posit2 = 300;

function doLights()
{
	litlogo.style.visibility = "visible"
	litlogo.style.display = "";
	litlogo.style.filter = "light";
	light = litlogo.filters[0];
	liteItNow();
}

function liteItNow()
{
	if ( lightcount++ < 200 )
	{
		if (g==1){posit -= 10} else {posit +=10}
		if (g==1){posit2 += 10} else {posit2 -=10}
		light.Clear(); 
		light.addCone (135,90,1,posit,10,255,255,255,10,15);
		light.addCone (135,90,1,posit2,10,255,255,255,10,15);
		light.addAmbient (255,255,255,50);
		if (posit >300) { g=1 } else if (posit<-20) { g=0 }
		setTimeout ( "liteItNow()", lightinterval );
	}
	else
	{
		lightcount = 0;
		setTimeout ( "liteItNow()", 10 );
	}
}
</script>





<!---------------- VBSCRIPTS  ----------------->

<SCRIPT LANGUAGE=vbscript>
sub doTrans
call litlogo2.filters.item(0).Apply()
litlogo2.src = "blk.gif"
call litlogo2.filters.item(0).Play()
end sub
</SCRIPT>




</BODY>
</HTML>

