/* RunThing
 *
 * This will use setTimeout to continually call a function until it returns 0
 *
 * Author:	Charles Herold
 * Date:	8/5/97
 */
var idArray = new Array();	// see comment below
var idNumber = 0;	// could we attach this to the setID function rather than have it global?

function _runObject(func, theObject, speed, runAtEnd)
{
	this.func = func;	// the function runAgain runs
	this.idNumber = setID(theObject, speed); 	// set the id of an object and the speed it will runs func
	this.run = runAgain;
	if (runAtEnd)
		this.runAtEnd = runAtEnd;		// function to run when func returns 0;
	this.status = 0;		// whether or not the object's function is running
	this.getStatus = getStatus;
	this.setRunAtEnd = setRunAtEnd;
}

function setRunAtEnd(func)
{
	this.runAtEnd = func;
}

function setID(theObject, speed)
{
	idArray[idNumber] = new _setID(idNumber, theObject, speed);
	return idNumber++;
}

// see if I can fold this into setID rather than call as separate function
function _setID(id, theObject, speed)
{
	this.idNumber = id;
	this.speed = speed;
	this.theObject = theObject;
	this.setSpeed = setRunSpeed;
}

function getStatus()
{
	return this.status;
}
function setRunSpeed(speed)
{
	this.speed = speed;
}

function animate()
{
	var newleft = this.left + direction * hop;

	if (this.direction * newleft <= this.direction * this.stopPoint) {
		this.left = newleft;
		setTimeout ("runAgain(" + this.idNumber + ")", speed);
	}
}

/**********************
 * runAgain is a workaround -- because setTimeout itself
 * will only take a literal string there's no way to make its
 * argument an object's function pointer (that I can find)
 **********************/
function runAgain(passedID)
{
	var id;
	if (passedID != null)
		id = passedID;
	else
		id = this.idNumber;
//	alert('runAgain(' + id + ')');
	for (var i = 0; i < idArray.length; i++) {		// find proper object
		if (idArray[i].idNumber == id) {
			if (idArray[i].theObject.func() ) {		// run its function until it returns 0
				idArray[i].theObject.status = 1;
//				alert(idArray[i].speed);
				setTimeout ("runAgain(" + id + ")", idArray[i].speed);
			} else {
				idArray[i].theObject.status = 0;
				if (idArray[i].theObject.runAtEnd)
					idArray[i].theObject.runAtEnd();
				
			}
		}
	}
}


// debug routines
function propertiesList(theObject)
{
	var results = "property list of " + theObject.id + ":";
	for (var x in theObject)
		results += x + ', ';
	alert (results);
}