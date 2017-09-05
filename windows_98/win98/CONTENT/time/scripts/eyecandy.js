// document created and programmed by Josh Hochman
// * further hacked by Josh Hochman starting 8/11/97

function fadeIn(theObject) {
	theObject.style.zIndex = 1;
	theObject.style.color = "red";
}

function fadeOut(theObject) {
	theObject.style.zIndex = -1;
	theObject.style.color = theObject.defaultColor;
}

function moveToSubhead(theObject,theMover,theTime) {
	if (pickedSection){
		pickedSection.style.color = pickedSection.defaultColor;
		otherMover.Target = pickedSection.id;	
		otherMover.Duration = theTime;
		var points = new Array(30,80,parseInt(pickedSection.defaultLeft),parseInt(pickedSection.defaultTop));
		otherMover.PolyLine(2,points);
		otherMover.Play();
		pickedSection.style.zIndex = -1;
	}
	theObject.style.color = "black";
	theObject.style.zIndex = 1;

	theMover.Target = theObject.id;
	theMover.Duration = theTime;
	var points = new Array(parseInt(theObject.style.left),parseInt(theObject.style.top),30,80);
	theMover.PolyLine(2,points);
	theMover.Play();
	pickedSection = theObject;
}


function lowerAllSectionText(){
	topStorySectionText.style.visibility = "hidden";
	coverStorySectionText.style.visibility = "hidden";
	timeLinkSectionText.style.visibility = "hidden";
}

function lowerAllArticleText(){
	topStory.style.color = topStory.defaultColor;
	topStory.style.zIndex = -1;
	coverStory.style.color = coverStory.defaultColor;
	coverStory.style.zIndex = -1;
	timeLinkText.style.color = timeLinkText.defaultColor;
	timeLinkText.style.zIndex = -1;
}

function raiseSection(theText,theSection,theSectionText){
	if (theText) {
		theText.style.color = "black";
		theText.style.zIndex = 1;
	} 
	if (theSection) {
		theSection.style.color = "black";
		theSection.style.zIndex = -1; 
	}
	if (theSectionText){
		if (sectionText.style.visibility == "hidden") {
			sectionText.filters.item(0).apply();		
			sectionText.style.visibility = "";
			sectionText.filters.item(0).play();
		}
		globject = theSectionText;
		setTimeout("globject.filters.item(0).apply();globject.style.visibility = '';globject.filters.item(0).play()",1000);
	}
	if (theSection) { 
		globject02 = theSection;
		moving = 1;
		setTimeout("moveToSubhead(globject02,mover,1)",1000);
		setTimeout("moving = 0",1000);
	}
}

function sleep(mill)
{
     var date = new Date();
     var started = date.getTime();
     var current;
     do {
          date = new Date();
          current = date.getTime();
     } while (started + mill > current);
}


