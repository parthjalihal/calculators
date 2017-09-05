/*
 *  Functions to move an element to a set point
 *
 *  Author: Charles Herold
 *  Date:	8/5/97
 */
 
/********* IMPORTANT:  Any document that sources this code must also source runthing.js *************/


/* This code is all to support the creation and implementation of the Mover object.
 * The mover object will take any repositionable element and move it by increments to
 * set coordinates.  The Mover object supports these methods:
 *
 * run:  begins the move.
 * setSpeed: set the interval between each incremental move in milleseconds
 * setHop: set the distance of each incremental move.
 * setTop: set the top coordinate for the move to stop at
 * setLeft: set the left coordinate for the move to stop at
 * setRunAtEnd: set a function that will run when the moving object stops moving
 * 
 * to create a Mover, use 
 * moveThis = new Mover(object_id);
 *
 * It is possible to set the instructions object containing all move
 * instructions and pass it to Mover to create the object, but it's probably
 * better to use the interface as described above.  While there is no such thing
 * as a private property or method in JavaScript, it is inadvisable to directly
 * fool with any properties, or with any methods except for those documented above.
 */

var moveObjDefaultSpeed = 20;
var moveObjDefaultHop = 4;

 // this is designed to be attached to an object which also has 
 // a moveInstructions attached to it
function gotoMoveObject()
{
	return moveObject (this.theObject, this.instructions);
}


/* For creating a Moveable object.  theObject is the object to be moved,
 * instructions is a moveInstructions object containing information
 * about the move
 */
function Mover(theObject, instructions)
{
	if (theObject == null)
		return null;

	this.theObject = theObject;
	if (instructions != null )
		this.instructions = instructions;
	else
		this.instructions = new moveInstructions();
	this.start = gotoMoveObject;
	this.runObject = new _runObject(this.start, this, this.instructions.speed);
	this.func = this.start;
	this.idNumber = this.runObject.idNumber;
	
	// Mover instruction methods
	this.run = runAgain;
	this.setRunAtEnd = this.runObject.setRunAtEnd;
	this.setSpeed = setMoveSpeed;
	this.setHop = setMoveHop;
	this.setTop = setMoveTop;
	this.setLeft = setMoveLeft;
}

function setMoveHop (hop)
{
	this.instructions.hop = hop;
}

function setMoveLeft (left)
{
	this.instructions.left = left;
}
function setMoveTop (top)
{
	this.instructions.top = top;
}
function setMoveSpeed(speed)
{
	idArray[this.idNumber].setSpeed(speed);
}


/* For creating a moveInstructions object, which describes where a container should
 * move to (top, left), how far each incremental move should be (hop)
 * and how many milliseconds to wait between moves (speed)
 */
function moveInstructions (top, left, hop, speed)
{
	this.top = top != null ? top : 0;
	this.left = left != null ? left: 0;
	this.hop = hop != null ? hop: moveObjDefaultHop;		// how far to move each time	
	this.speed = speed != null ? speed : moveObjDefaultSpeed;
	return this;
}

// calls either moveObjectV or moveObjectH, accordingly
function moveObject (theObject, instructions)
{
//	alert('moveObject');
	if (!theObject.style.left || !theObject.style.top) {
		alert ("left or top not defined in " + theObject.id + " -- aborting move");
		return 0;
	}
	// IE has left and top as a string, must make them an int
	var oldLeft = parseInt(theObject.style.left);
	var oldTop = parseInt(theObject.style.top);
	// .style is the IE way -- for Netscape it wouldn't be there
	var goHorz = oldLeft != instructions.left;
	var goVert = oldTop != instructions.top;

	if(! (goHorz || goVert) ) 
		return 0;					// we're there
		
	// if only goHorz or goVert is true, it's a simple move
	if (goHorz ^ goVert) {
		if (goHorz )
			return moveObjectH (theObject, instructions);
		else
			return moveObjectV (theObject, instructions);			
	}	
	// ADD LATER: if we move diagonally, compute which is the more pressing move and do that
	// so that we'll alternate move functions
	var horzDistance = 	Math.abs(instructions.left - oldLeft);
	var vertDistance = Math.abs(instructions.top - oldTop);
	var calc = horzDistance / vertDistance;
	var calcVert = vertDistance * calc;
	if (calcVert > horzDistance)
		return moveObjectV (theObject, instructions);
	else
		return moveObjectH (theObject, instructions);	
}

// move an Object horizontally
function moveObjectH (theObject, instructions)
{
	var oldLeft = parseInt(theObject.style.left);
	var direction = oldLeft < instructions.left ? 1 : -1;
	var newleft = oldLeft + direction * instructions.hop;
	if (newleft * direction > instructions.left * direction)
		newleft = instructions.left;
	if (direction * newleft <= direction * instructions.left) {
		theObject.style.left = newleft;
		return 1;
	}
	return 0;
}

// move an Object vertically
function moveObjectV (theObject, instructions)
{
	var oldTop = parseInt(theObject.style.top);
	var direction = oldTop < instructions.top ? 1 : -1;
	var newtop = oldTop + direction * instructions.hop;
	if (newtop * direction > instructions.top * direction)
		newtop = instructions.top;
	if (direction * newtop <= direction * instructions.top) {
		theObject.style.top = newtop;
		return 1;
	}
	return 0;
}