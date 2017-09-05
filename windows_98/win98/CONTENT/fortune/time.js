var months = new Array('Jan.', 'Feb.', 'March', 'April', 'May', 'June', 'July', 'Aug.', 'Sep.', 'Oct.', 'Nov.', 'Dec.');
function startTime()
{
	printDate();	
}

function lead0( val, char ) {  // add leading 0's when necessary
   return val < 10 ? char + val.toString() : val      
}
var tester = 1;
var second = 1000;
var theDate;	// all functions use this, so after calling a function this will be set to current time & date

function printDate()
{
//	alert(document.all.time.innerText);
	document.all.time.innerText = buildTime();
//	alert(document.all.time.innerText);
	if (newDay())
		document.all.date.innerText = buildDate();
	// recheck at the turn of the minute
	setTimeout("printDate()", (60 - theDate.getSeconds()) * second + 1);
}

function newDay()
{
	theDate = new Date();
	
	if (!oldTime) {
		var oldTime = new Date();
		return 1;
	}
	if (theDate.getHours() < oldTime.getHours()) {	// gone from 24 to 0, one expects
		oldTime = theDate;
		return 1;	
	}
	return 0;
}
function buildDate()
{
	theDate = new Date();
	return months[theDate.getMonth()] + ' ' + theDate.getDate() + ', 19' + theDate.getYear();
}
function buildTime()
{ 
	// fix military time and determine if AM or PM
	var theDate = new Date()
	var ampm = "am"
	var h=theDate.getHours()
	if (h > 11 && h != 24) {if (h > 12) h = h - 12; ampm = "pm";}       
	return lead0(h, ' ') + ":" + lead0( theDate.getMinutes(), '0' )  + ampm;
}
