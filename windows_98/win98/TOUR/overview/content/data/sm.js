var dt = "This is a demonstration. Click anywhere to close, then try it yourself.";



// LOCALIZERS IGNORE BELOW THIS LINE
//----------------------------------

function showmedone() {
  demotext.filters.item(0).Apply();
  demotext.style.color="#FF0000";
  demotext.filters.item(0).play();
}

function loadTally() {
// THIS FUNCTION, FIRED BY THE IMAGE ONLOAD EVENT, USES loadnum TO COUNT DOWN UNTIL ALL IMAGES FOR THE ANIMATION ARE LOADED, THEN PLAYS THE ANIMATION
  x = window.event.srcElement;
  if ( (loadnum > -1) && (x.readyState == "complete") ) {
    loadnum--;
    if (loadnum == 0) {
      l.style.visibility="visible";
      loading.style.visibility="hidden";
      timeout1 = window.setTimeout("pStart();",500);
    }
  }
}

function pStart() {
  P1.Play();
  arrow.style.visibility="visible";
}

