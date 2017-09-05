<HTML>
<HEAD>
<TITLE>Expedia</title>
<STYLE>
<!--
BODY {
	background: #000000
}

.Section {
	cursor:hand;
	font-size:13pt ! important;
	color:white;
	font-weight:bold;
	font-family:Arial;
	text-decoration:none;
	filter:dropshadow(color=#000, offX=1, offY=2, positive=true);
	width:100%
}
.SectionText {
	filter: revealTrans(Duration=0.5, Transition=12);
	position:absolute;
	cursor:hand;
	visibility:hidden;
	margin-left:0pt;
	font-size:10pt ! important;
	color:#990000;
	font-weight:bold;
	font-family:Arial;
	text-decoration:none;
}


-->
</STYLE>
<SCRIPT LANGUAGE="JavaScript">
var timeoutID = 0;
var intervalID = 0;
var index = 0;
var selected = 0;

function win_onload() {
	timeoutID = setTimeout("scroll()",5000);
}
function win_mousemove() {
	if (intervalID != 0) {
		clearInterval(intervalID);
		intervalID = 0;
		for(i=0;i<6;i++) {hideSection(i);}
	}
	if (timeoutID != 0) {
		clearTimeout(timeoutID);
	}
	timeoutID = setTimeout('scroll()', 5000);
}

function scroll() {
	var index;
	var lastindex;
	var header;
	var text;
	index = 0;
	hideSection(selected);
	skipLine();
	intervalID = setInterval("skipLine()", 5000);
}

function showSection(section) {
	var header;
	var text;
	header = document.all.item("Section");
	text = document.all.item("SectionText");
	header(section).style.color = '#FFCC00';

	if(text(section).filters[0].status == 0){
	text(section).filters[0].Apply();
	text(section).style.visibility = "visible";
	text(section).filters[0].Play();
	}

	selected = section;
}

function hideSection(section) {
	var header;
	var text;
	header = document.all.item("Section");
	text = document.all.item("SectionText");
	header(section).style.color = '#FFFFFF';
	text(section).style.visibility = 'hidden';
}

function skipLine() {
	var lastindex;
	if (index <= 0) {
		lastindex = 5;
	}
	else if (index > 5) {
		index = 0;
		lastindex = 5;
	}
	else {
		lastindex = index - 1;
	}
	hideSection(lastindex);
	showSection(index);
	index++;
}	
</SCRIPT>	
</HEAD>
<BODY TOPMARGIN=0 LEFTMARGIN=0 onLoad="win_onload()" onmousemove="win_mousemove()">
<CENTER>

<TABLE HEIGHT=100% BORDER=0 CELLPADDING=0 CELLSPACING=0>
<TR>
<TD VALIGN=MIDDLE ALIGN=CENTER>
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 HEIGHT=365 WIDTH=460 BACKGROUND="./images/540235.jpg">
<TR>
<TD WIDTH=16>&nbsp;</TD>
<TD VALIGN=TOP ALIGN=LEFT>
	<IMG SRC="./images/explogo.gif" HEIGHT=84 WIDTH=177 BORDER=0 VSPACE=3>
	<BR>

	<div id=Section class=Section onmouseover="showSection(0)" onmouseout="hideSection(0)">
	Current Fares
	</div>

	<div id=Section class=Section onmouseover="showSection(1)" onmouseout="hideSection(1)">
	News Alerts
	</div>

	<div id=Section class=Section onmouseover="showSection(2)" onmouseout="hideSection(2)">
	Savvy Advice
	</div>

	<div id=Section class=Section onmouseover="showSection(3)" onmouseout="hideSection(3)">
	Desktop Escapes
	</div>

	<div id=Section class=Section onmouseover="showSection(4)" onmouseout="hideSection(4)">
	Getaway Ideas
	</div>

	<div id=Section class=Section onmouseover="showSection(5)" onmouseout="hideSection(5)">
	Live Adventures
	</div>

	<DIV id=SectionText class=SectionText>
	<BR><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 VSPACE=12><BR>
	<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=444>
	<TR><TD WIDTH=139><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 HSPACE=69></TD>
	<TD><FONT SIZE=2 COLOR="#990000"><B>
	Find low airfares on worldwide routes...<BR><IMG SRC="./images/spaceit.gif" HEIGHT=2 WIDTH=1 VSPACE=0><BR>
	Seattle&#151;San Francisco &nbsp; New York&#151;London<BR><IMG SRC="./images/spaceit.gif" HEIGHT=2 WIDTH=1 VSPACE=0><BR>
	Chicago&#151;Orlando &nbsp; Los Angeles&#151;Honolulu<BR><IMG SRC="./images/spaceit.gif" HEIGHT=2 WIDTH=1 VSPACE=0><BR>
	And <I>thousands</I> more
	</B></FONT></TD></TR>
	</TABLE>	
	</DIV>

	<DIV id=SectionText class=SectionText>
	<BR><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 VSPACE=12><BR>
	<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=444>
	<TR><TD WIDTH=115><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 HSPACE=57></TD>
	<TD><FONT SIZE=2 COLOR="#990000"><B>
	<UL>
	<LI><I>Sizzling</I> Fares to Phoenix, Las Vegas
	<LI>A Divin' Deal in Curaçao
	<LI>Air Traffic Controller Strike Ends
	<LI>Net Tax Hike for Air Travelers
	</UL>
	</B></FONT></TD></TR>
	</TABLE>	
	</DIV>

	<DIV id=SectionText class=SectionText>
	<BR><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 VSPACE=12><BR>
	<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=444>
	<TR><TD WIDTH=115><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 HSPACE=57></TD>
	<TD><FONT SIZE=2 COLOR="#990000"><B>
	<UL>
	<LI>Get Air Miles from Your Mortgage
	<LI>Knowing Airline Lingo Can Save Money
	<LI>Safeguard Cash Shortage on Vacation
	<LI>Money-Saving Tip: Use Alternate Airports
	</UL>
	</B></FONT></TD></TR>
	</TABLE>	
	</DIV>

	<DIV id=SectionText class=SectionText style="margin-left:-5pt">
	<BR><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 VSPACE=1><BR>
	<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=444>
	<IMG SRC="./images/542506.jpg" HEIGHT=68 WIDTH=99 HSPACE=9>
	<IMG SRC="./images/771109.jpg" HEIGHT=87 WIDTH=59 HSPACE=9>
	<IMG SRC="./images/910402.jpg" HEIGHT=68 WIDTH=99 HSPACE=9>
	<IMG SRC="./images/771622.jpg" HEIGHT=68 WIDTH=99 HSPACE=9>
	</TABLE>	
	</DIV>

	<DIV id=SectionText class=SectionText>
	<BR><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 VSPACE=12><BR>
	<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=444>
	<TR><TD WIDTH=115><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 HSPACE=57></TD>
	<TD><FONT SIZE=2 COLOR="#990000"><B>
	<UL>
	<LI>The Galápagos: A 360° Underwater Tour
	<LI>Smile, You're in San Francisco! 
	<LI>The Thing About ... Sedona, Arizona
	<LI>Two Weeks, Two Islands, Two Kids
	</UL>
	</B></FONT></TD></TR>
	</TABLE>	
	</DIV>

	<DIV id=SectionText class=SectionText>
	<BR><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 VSPACE=12><BR>
	<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=444>
	<TR><TD WIDTH=115><IMG SRC="./images/spaceit.gif" HEIGHT=1 WIDTH=1 HSPACE=57></TD>
	<TD><FONT SIZE=2 COLOR="#990000"><B>
	<UL>
	<LI>Dinosaur Fossil Hunt of the Lost World
	<LI>Hemingway Trail: Paris, Pamplona, Italy
	<LI>The Coral Walls of Fiji with Cousteau
	<LI>STS-81 Live from Space with Tom Clancy
	</UL>
	</B></FONT></TD></TR>
	</TABLE>	
	</DIV>


	<DIV title="Aruba: Photo by Darrell Jones/The Stock Market
Australia: Photo by Mitchell Funk/The Image Bank
Egypt: Photo by Otto Lang/CORBIS-BETTMANN
Taipei: Photo by Keiki Haginoya/Australian Picture Library
Jackson Hole: Photo by Karl Fliehler/Tony Stone Images" style="position:absolute; width:60; margin-left:0pt; margin-top:105pt; cursor:hand; font-size:7pt; color:#000000; font-family:Arial; text-decoration:none">
	Photo credits
	</DIV>

	<DIV title="Click here to visit our Web site" style="position:absolute; width:91; margin-left:200px; margin-top:100pt; cursor:hand">
	<A HREF="http://expedia.com/">
	<IMG SRC="./images/expbuttn.gif" HEIGHT=20 WIDTH=91 BORDER=0></A>
	</DIV>

	<DIV title="Click here to subscribe to the Expedia channel" style=" width:136; margin-left:300px; margin-top:100pt; cursor:hand">
	<A HREF="javascript:window.external.addChannel('http://expedia.com/IEChannel/content/default.asp')">
	<IMG SRC="./images/IEAddCh.gif" HEIGHT=20 WIDTH=136 BORDER=0></A>
	</DIV>


</TD>
</TR>
</TABLE>
</CENTER>
</BODY>
</HTML>