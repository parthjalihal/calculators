/*
 *  Functions to move an element to a set point
 *
 *  Author: Charles Herold
 *  Date:	8/5/97
 */

/*
 * This creates an object that fades the color of an object's text from one color to
 * another.  Check moveobj.js for the sort of documentation that needs to be added to
 * this file.
 */
 
 // this is designed to be attached to an object which also has 
 // a moveInstructions attached to it

var defaultShiftColorSpeed = 1;
var defaultShiftColorIncrement = 5;

function gotoColorShiftObject()
{
	return ColorShiftObject (this.theObject, this.instructions);
}


function ColorShifter(theObject)
{
	if (theObject == null) {
		return;
	}

	this.theObject = theObject;
	this.instructions = new ColorShiftInstructions();
	this.start = gotoColorShiftObject;
	this.runObject = new _runObject(this.start, this, this.instructions.speed);
	this.func = this.start;
	this.idNumber = this.runObject.idNumber;

	// ColorShifter instruction methods
	this.run = runAgain;
	this.setRGB = setRGB;
	this.setRunAtEnd = this.runObject.setRunAtEnd;
	this.setSpeed = setColorShiftSpeed;
	this.setIncrement = setIncrement;
	
}


function setRGB(r, g, b) {
	this.instructions.newColor.r = r;
	this.instructions.newColor.g = g;
	this.instructions.newColor.b = b;
}
function setRGBColor(r, g, b)
{
	this.r = r;
	this.g = g;
	this.b = b;
}

function setOpacity (opacity)
{
	this.instructions.opacity = opacity;
}
function setIncrement (increment)
{
	this.instructions.increment = increment;
}
function setColorShiftSpeed(speed)
{
	idArray[this.idNumber].setSpeed(speed);
}


function ColorShiftInstructions (opacity, speed, increment)
{
	this.newColor = new setRGBColor(255, 255, 255);
	this.increment = increment != null ? increment : defaultShiftColorIncrement;
	this.speed = speed != null ? speed : defaultShiftColorSpeed;
//	return this;
}

/*************************************************************
 * fade script ver0.1 by Kouichirou@Eto.com 1996/02/20
 * Copyright (c) 1996 Kouichirou Eto. All Rights Reserved.
 * You can freely copy, use, modify this script,
 * if the credit is given in the source.
 */
var fadeSpeed = 200;

function makearray(n) {
    this.length = n;
    for(var i = 1; i <= n; i++)
        this[i] = 0;
    return this;
}

hexa = new makearray(16);
for(var i = 0; i < 10; i++)
    hexa[i] = i;
hexa[10]="a"; hexa[11]="b"; hexa[12]="c";
hexa[13]="d"; hexa[14]="e"; hexa[15]="f";

function hex(i) {
    if (i < 0)
        return "00";
    else if (i > 255)
        return "ff";
    else
        return "" + hexa[Math.floor(i/16)] + hexa[i%16];
}

function setbgColor(r, g, b) {
    var hr = hex(r); var hg = hex(g); var hb = hex(b);
    document.bgColor = "#"+hr+hg+hb;
}

function setTextColor(theObject, r, g, b) {
    var hr = hex(r); var hg = hex(g); var hb = hex(b);
    theObject.style.color = "#"+hr+hg+hb;
}

/***** end fade script *****/
/************************************************************/

function incrementColor(oldcolor, newcolor, increment)
{
	if (oldcolor == newcolor)
		return newcolor;
	var direction = newcolor > oldcolor ? 1 : -1;
	var toReturn = oldcolor + increment * direction;
	if (toReturn * direction > newcolor * direction)
		toReturn = newcolor;
	return toReturn;
}

function ColorShiftObject (theObject, instructions)
{
	/* get current color */
		var red, green, blue;
		var oldColor = new getValue(theObject.style.color);
		red = incrementColor(oldColor.r, instructions.newColor.r, instructions.increment);
		green = incrementColor(oldColor.g, instructions.newColor.g, instructions.increment);
		blue = incrementColor(oldColor.b, instructions.newColor.b, instructions.increment);
		setTextColor(theObject, red, green, blue);
		if (red == instructions.newColor.r && green == instructions.newColor.g && blue == oldColor.b)
			return 0;
		return 1;

	// ORIGINAL WAY -- ADAPT
    for(var i = 0; i <= instructions.increment; i++) {
			setTextColor(
	        	Math.floor(oldColor.r * ((instructions.increment-i)/instructions.increment) + instructions.newColor.r * (i/instructions.increment)),
    	    	Math.floor(oldColor.g * ((instructions.increment-i)/instructions.increment) + instructions.newColor.g * (i/instructions.increment)),
        		Math.floor(oldColor.b * ((instructions.increment-i)/instructions.increment) + instructions.newColor.b * (i/instructions.increment)) );
    }
}

// return an object containing the rgb values of a color assignment like #ff00ff
function getValue(value)
{
	if (!value) {
		alert("WARNING:No value passed in getValue, module shiftcol.js -- script will FAIL");
	}
	this.r = 0;
	this.g = 0;
	this.b = 0;

	var red, green, blue;
	var index = 0;
	
	if (value.charAt(0) == '#')
		index++;
	red = value.substring(index, index + 2);
	index += 2;
	green = value.substring(index, index + 2);
	index += 2;
	blue = value.substring(index, index + 2);

	this.r = fromHex(red);
	this.g = fromHex(green);
	this.b = fromHex(blue);
}

function fromHex(hex)
{
	var temp = 0;
	eval("temp = 0X" + hex);
	return temp;
}