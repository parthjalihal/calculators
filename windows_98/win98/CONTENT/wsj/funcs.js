
/*
Author: Ted Skolnick
8/15/97

This file contains all of the javascript functions used in the IE4 CD pages.

The most important parts are found at the very end of this file. Those
are the calls to set the order of the pages.

*/


//-------- Class Recordset  ------------------
// This is my javascript version 
// of the data control's record set.  I use this because
// the data control is too slow.
function class_Recordset()
	{
	// The first Page starts just past all of the properties
	// defined here.
	this.first = 9;	     
	this.last  = this.first - 1;
	this.curr = this.first;	     

	// Add an Page method
	this.addRecord = Recordset_addRecord;   

	// Move First
	this.MoveFirst = Recordset_moveFirst;   

	// Move Last
	this.MoveLast = Recordset_moveLast;   

	// Move Next
	this.MoveNext = Recordset_moveNext;

	// Move Prev
	this.MovePrev = Recordset_movePrev;   

	// Get the current position ( logical index )
	// do not use this index to access this object as an array
	// do all access through the provided methods.
	this.AbsolutePosition = Recordset_AbsolutePosition;

	// Get the number of records
	this.RecordCount = Recordset_recordCount;	

	// Get the current record
	this.getCurrent = Recordset_getCurrent;
	}

function Recordset_getCurrent()
	{
	return this[ this.curr ];
	}

function Recordset_addRecord( newRecord )   
	{
	this.last++;
	this[this.last]=newRecord;
	}

function Recordset_moveFirst()   
	{
	this.curr = this.first;
	}

function Recordset_moveLast()   
	{
	this.curr = this.last;
	}

function Recordset_moveNext()
	{
	if ( this.curr < this.last )
		this.curr++; 
	}

function Recordset_movePrev()
	{
	if ( this.curr > this.first )
		this.curr--; 
	}

function Recordset_AbsolutePosition()
	{
	return ( this.curr - this.first + 1 );
	}

function Recordset_recordCount()	
	{
	return ( this.last - this.first + 1 );
	}



// Remove any chars included in the given set
function removeCharsInSet( StringIn, SetOfInvalidChars )
	{
	var retVal = ""
	var i = 0;

	// If char is alnum then it is OK
	for ( i = 0; i < StringIn.length; i++ ) 
		{
		if ( !isCharInSet( StringIn.charAt( i ), SetOfInvalidChars) )
			retVal += StringIn.charAt( i ); 
		}

	return retVal;
	}


// Remove chars not included in the given set,
// result is a string that has only chars that apear in the set
function includeCharsInSet( StringIn, SetOfValidChars )
	{
	var retVal = "";
	var i = 0;

	// If char is alnum then it is OK
	for ( i = 0; i < StringIn.length; i++ ) 
		{
		if ( isCharInSet( StringIn.charAt( i ), SetOfValidChars ) )
			retVal += StringIn.charAt( i ); 
		}

	return retVal;
	}


// Return true if the char is found in the given set.
function isCharInSet( charIn, charSetToSearch )
	{
	var foundCharInSet = false;
	var i = 0;

	// If char is in the set return true
	while ( ( !foundCharInSet ) && ( i < charSetToSearch.length ) )
		{
		if ( charSetToSearch.charAt( i ) == charIn.toLowerCase() )
			{
			foundCharInSet = true;
			}
		i++;
		}

	return foundCharInSet;
	}



// Take a string of the form "10px" and just return
// the value 10
function toInt( pixVal )
	{
	var ret = 0;
	var s = "" + pixVal;

	s = includeCharsInSet( s, "-.1234567890");


	if ( s.length < 1 )
		s = "0";

	return eval( s );
	}


// Telll every ScreenItem to resize();
function resizeAll()
	{

	frameNextPrev.resize();

// NOTE IE4 bug this code below does not work
//	var i = 0;
//	var obj = null;
//
//	// For all screen items, scale them
//	for ( i = 0; i < document.all.length; i++ )
//		{
//		obj = document.all[i];
//		if ( "ScreenItem" == obj.className )
//			{
//			obj.resize();
//			}
//		}
	}



function find_string( what, inwhat )
	{
	return ( inwhat.indexOf( what ) >= 0)
	}



// Look through all the pages in the sequnce
// and stop at the one Whose URL mathces the URL
// that was passed in.  
function seek_to_value( UrlToFind )
	{
	var bDone = false;
	rs.MoveFirst();

	while ( !bDone )
		{
		bDone = (rs.AbsolutePosition() >= rs.RecordCount() );
		bDone = bDone || ( find_string( rs.getCurrent().url.toLowerCase(), UrlToFind.toLowerCase()  ))
		if ( !bDone )
			rs.MoveNext();
		}
	}


//------------- Class Record --------------------

function class_Record( URLIn )
	{
	this.url = URLIn;
	}



// Go to the next page in the sequence of pages.
function next()
	{
	// First move to the current page, based on the current
	// URL. then step to the next entry.
	seek_to_value( parent.window.top.location.href );
	rs.MoveNext();
	window.top.location = rs.getCurrent().url;
	}


// Go to the previous page in the sequence.
function prev()
	{
	// First move to the current page, based on the current
	// URL. then step to the prev entry.
	seek_to_value( parent.window.top.location.href );
	rs.MovePrev();
	window.top.location = rs.getCurrent().url;
	}


// Create an instance of the record set.
var rs = new class_Recordset();


// These lines set the order of pages for stepping
// using the Next and prev buttons above.
// If you change the order here in this one file,
// all HTML pages in the sequence will pick it up
// and follow the new order.

rs.addRecord( new class_Record( "1_1.htm" ) );
rs.addRecord( new class_Record( "2_1.htm" ) );
rs.addRecord( new class_Record( "3_1.htm" ) );
rs.addRecord( new class_Record( "3_2.htm" ) );
rs.addRecord( new class_Record( "3_3.htm" ) );
rs.addRecord( new class_Record( "4_1.htm" ) );
rs.addRecord( new class_Record( "5_1.htm" ) );
rs.addRecord( new class_Record( "5_2.htm" ) );
rs.addRecord( new class_Record( "5_3.htm" ) );
rs.addRecord( new class_Record( "5_4.htm" ) );
rs.addRecord( new class_Record( "5_5.htm" ) );
rs.addRecord( new class_Record( "6.htm" ) );
