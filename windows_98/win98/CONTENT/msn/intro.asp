<HTML>

     <HEAD>

        <TITLE>MSN Active Channel Preview</TITLE>

        <STYLE ID="mainstyle">


          .colorchange { font-family: arial;            /* encompasses all the small small text */
                         font-weight: normal;
                         color: #FFFFFF;
                         z-index: 10;}

          .bground     { font-family: arial;            /* background elements like the bg text and watermark */
                         font-weight: normal;
                         visibility: hidden;}

          .largeclip   { font-family: arial;            /* large clipping region.  used for test. */
                         font-weight: normal; 
                         clip: rect(0, 610, 600, 0);}

          .blurbclass  {z-index: 40;                    /* encompasses the pop-up blurbs */
                        background: #FFFF99;
                        color: #000000;
                        top: 100;
                        left: 130;
                        width: 250;
                        visibility: hidden;
                        filter: revealTrans(duration=0.2, transition=12);}

          .blurbmargins  {margin-left: 10;              /* text within blurbs */
                          margin-right: 10;
                          margin-top: 10;
                          margin-bottom: 10;
                          font-family: arial;
                          font-weight: bold;
                          font-size: 8pt;}

        </STYLE>


        <SCRIPT LANGUAGE="JavaScript">



// initializes an array of length "size" with all elements "0"

            function MakeArray(size)               
              {  this.length = size;
                 for (loop=1;loop<=size;loop++)
                   {  this[loop] = 0;
                   }
                 return this;
              }



//  Init initializes the page

            function Init()
              {  

                 // *** CONSTANTS ***
   
                 INSIDEBOX_WIDTH = 460;            //  height and width of the center area inside which all the foreground graphics must stay
                 INSIDEBOX_HEIGHT = 365;
                 NOTIFY_INTERVAL = 500;            //  how often (in milliseconds) to call the effect handler
                 REPEAT_INTERVAL = 120000;         //  just a number after which to zero "ticks" again (to keep it from overflowing one day)
                 MAX_EFFECTS = 60;                 //  the size of the effects array
                 FINAL_TEXT_COLOR = "FF3300";      //  the red color for the small text at the end
                 M_O_COLOR = "#10DD06";            //  highlight color for the mouseover text  
                 HAND_FRAMES_1=12;                 //  total frames in the hand-moving array
                 PAUSE_INTERVAL = 1000;            //  how long the hand pauses over the button
                 CHANNEL_URL = "http://ie.msn.com/us/channel/msn.cdf";    //  the subscription channel url


                 // ******************



                 Resize_Handler();                        // center the inner box & preposition everything

                 backgroundmidi.src="ie4chan.mid";        // cue de music!

                 tickArray = new MakeArray(MAX_EFFECTS);  //  create and initialize the timing array. tickArray is the timing mark, idArray is the object affected, and doneArray holds initial flags as well as marking a completed task 
 
                 idArray = new MakeArray(MAX_EFFECTS);    

                 doneArray = new MakeArray(MAX_EFFECTS);

                 tickArray[1] = 1000;                     //  the times here are in milliseconds relative to the previous element, for ease of editing.  they are converted below into absolute times.  
                 idArray[1] = "makethe";

                 tickArray[2] = 2000;
                 idArray[2] = "makethe";

                 tickArray[3] = 500;
                 idArray[3] = "msnbcBig";

                 tickArray[4] = 500;
                 idArray[4] = "msnbc";

                 tickArray[5] = 1000;
                 idArray[5] = "msnbcBig";

                 tickArray[6] = 0;
                 idArray[6] = "msnbc";

                 tickArray[7] = 500;
                 idArray[7] = "investBig";

                 tickArray[8] = 500;
                 idArray[8] = "invest";

                 tickArray[9] = 1000;
                 idArray[9] = "investBig";

                 tickArray[10] = 0;
                 idArray[10] = "invest";

                 tickArray[11] = 500;
                 idArray[11] = "expediaBig";

                 tickArray[12] = 500;
                 idArray[12] = "expedia";

                 tickArray[13] = 1000;
                 idArray[13] = "expediaBig";

                 tickArray[14] = 0;
                 idArray[14] = "expedia";

                 tickArray[15] = 500;
                 idArray[15] = "carpointBig";

                 tickArray[16] = 500;
                 idArray[16] = "carpoint";

                 tickArray[17] = 1000;
                 idArray[17] = "carpointBig";

                 tickArray[18] = 0;
                 idArray[18] = "carpoint";

                 tickArray[19] = 500;
                 idArray[19] = "gamingBig";

                 tickArray[20] = 500;
                 idArray[20] = "gaming";

                 tickArray[21] = 1000;
                 idArray[21] = "gamingBig";

                 tickArray[22] = 0;
                 idArray[22] = "gaming";

                 tickArray[23] = 500;
                 idArray[23] = "customizeBig";

                 tickArray[24] = 500;
                 idArray[24] = "customize";

                 tickArray[25] = 1000;
                 idArray[25] = "customizeBig";

                 tickArray[26] = 0;
                 idArray[26] = "customize";

                 tickArray[27] = 500;
                 idArray[27] = "searchBig";

                 tickArray[28] = 500;
                 idArray[28] = "search";

                 tickArray[29] = 1000;
                 idArray[29] = "searchBig";

                 tickArray[30] = 0;
                 idArray[30] = "search";

                 tickArray[31] = 500;
                 idArray[31] = "thisway";

                 tickArray[32] = 0;
                 idArray[32] = "subscribe";

                 tickArray[33] = 0;
                 idArray[33] = "msnlogo";
                 doneArray[33] = "CHANGE COLOR"

                 tickArray[34] = 1000;
                 idArray[34] = "thisway";

                 tickArray[35] = 500;
                 idArray[35] = "msnbc";

                 tickArray[36] = 0;
                 idArray[36] = "invest";

                 tickArray[37] = 500;
                 idArray[37] = "carpoint";

                 tickArray[38] = 0;
                 idArray[38] = "gaming";

                 tickArray[39] = 500;
                 idArray[39] = "customize";

                 tickArray[40] = 0;
                 idArray[40] = "search";

                 tickArray[41] = 500;
                 idArray[41] = "sidewalk";

                 tickArray[42] = 0;
                 idArray[42] = "encarta";

                 tickArray[43] = 0;
                 idArray[43] = "expedia";

                 tickArray[44] = 500;
                 idArray[44] = "msnlogo";

                 tickArray[45] = 500;
                 idArray[45] = "hand";

                 tickArray[46] = 500;
                 idArray[46] = "hand";
                 doneArray[46] = "MOVE1";  // signals the hand to start moving cycle

                 tickArray[47] = 3000;
                 idArray[47] = "hand";

                 tickArray[48] = 10000;
                 idArray[48] = "hand";

                 tickArray[49] = 500;
                 idArray[49] = "hand";
                 doneArray[49] = "MOVE1";

                 tickArray[50] = 3000;
                 idArray[50] = "hand";

                 tickArray[51] = 10000;
                 idArray[51] = "hand";

                 tickArray[452] = 500;
                 idArray[52] = "hand";
                 doneArray[52] = "MOVE1";

                 tickArray[53] = 3000;
                 idArray[53] = "hand";




                
  
                 handX_1 = new MakeArray(HAND_FRAMES_1);        //  inits the hand-moving array.  Simple x- and y- offsets.
                 handY_1 = new MakeArray(HAND_FRAMES_1);

                 handX_1[1]= 0;
                 handY_1[1] = -10;
                 handX_1[2]= 0;
                 handY_1[2] = -10;
                 handX_1[3]= 0;
                 handY_1[3] = -10;
                 handX_1[4]= 0;
                 handY_1[4] = -10;
                 handX_1[5]= 0;
                 handY_1[5] = -10;
                 handX_1[6]= 0;
                 handY_1[6] = -10;
                 handX_1[7]= 0;
                 handY_1[7] = 10;
                 handX_1[8]= 0;
                 handY_1[8] = 10;
                 handX_1[9]= 0;
                 handY_1[9] = 10;
                 handX_1[10]= 0;
                 handY_1[10] = 10;
                 handX_1[11]= 0;
                 handY_1[11] = 10;
                 handX_1[12]= 0;
                 handY_1[12] = 10;

                 pauseframe = eval(HAND_FRAMES_1) / 2;    //sets the frame after which to pause (over the button)
                 
                 ticks = 0;                               //  sets timer to zero

                 // this section converts the relative ticks in tickArray into absolute values.  

                 var num = 0;

                 while (idArray[num+1] !="0")
                   { num++
                   }
                 NUM_OF_EFFECTS=num;

                 if (NUM_OF_EFFECTS>1)
                   {  var prev = tickArray[1];
                      for (var loop=2; loop<=NUM_OF_EFFECTS; loop++)
                        { if (tickArray[loop]<0)
                            {  tickArray[loop] = tickArray[loop] * (-1);
                            }
                          else
                            { 
                               tickArray[loop] += prev;
                               prev = tickArray[loop];
                            }
                        }
                   }

                 // end conversion.

              
                 rollover = "disabled";                                                   //disable mouseover until the end

                 document.styleSheets.mainstyle.rules[1].style.visibility = "visible";    // make all ".bground" items visible

                 window.setInterval("Effect_Handler()", NOTIFY_INTERVAL);                 // ensure that the effects handler gets called periodically to perform the effects
  
                 
              }  //  end function Init



// Get_e returns the element associated with the last event

            function Get_e()                    
              {  e = window.event.srcElement;
              }



// Hot_A handles mousover

            function Hot_A()                    
              {  if (rollover=="enabled")
                   {  Get_e();
                      var i = e.getAttribute("indx");
                      testsound.src="blurbsnd.wav";
                      blurb[i].style.visibility = "visible";                     
                   }
              }


// Cold handles mouseout

            function Cold_A()   
              {  Get_e();
                 var i = e.getAttribute("indx");
                  blurb[i].style.visibility = "hidden";
              }


// Resize_Handler handles a resize event (duh...)

            function Resize_Handler()    
              { var client_width = theBody.clientWidth;            // get window height & width
                var client_height = theBody.clientHeight;
                if (client_width <= INSIDEBOX_WIDTH)               // if the window is narrower than the "insidebox" then nail the inside origin to the left side of the window.
                  {  var origX = 0;                                
                  }
                else
                  {  var origX = Math.round((client_width - INSIDEBOX_WIDTH)/2);  // ...otherwise, center the box
                  }

                if (client_height <= INSIDEBOX_HEIGHT)             // if the window is shorter than the "insidebox" then nail the inside origin to the top side of the window.
                  {  var origY = 0;
                  }
                else
                  {  var origY = Math.round((client_height - INSIDEBOX_HEIGHT)/2);  // ...otherwise, center the box
                  }

                for (var loop=0; loop<document.all.length; loop++)   // now reset all the objects whose ".position: absolute" to offeset them by the new amount
                  {  var theItem = document.all(loop);
                     if (theItem.style.position == "absolute")
                       { theItem.style.top = (eval(origY) + eval(theItem.offy));
                         theItem.style.left = (eval(origX) + eval(theItem.offx));
                       }
                  }
              }



// Effect_Handler handles visual effects: fades, animation, and such.  All timed events in the tickArray use this.

            function Effect_Handler()
              {  

                 if (ticks>REPEAT_INTERVAL)  // prevent overflow
                   {  ticks=0;
                   }

                 ticks += NOTIFY_INTERVAL;   // increment the tick counter


                 for (var loop=1;loop<=NUM_OF_EFFECTS;loop++)       // iterate through the tickArray
                   {  var tempID = idArray[loop];

                      var startTicks = tickArray[loop];
                      var theItem = document.all(tempID);

                      if (ticks >= startTicks)                      // if the event is due to be handled now
                        {  if (doneArray[loop] == "0")              // if no special flags are in the matching doneArray element
                             {  theItem.filters.revealTrans.Apply();     // ...do a transition on the object
                                if (theItem.style.visibility == "hidden") 
                                  {  theItem.style.visibility = "visible";
                                  }
                                else
                                  {  theItem.style.visibility = "hidden";
                                  }
                                theItem.filters.revealTrans.Play();
                         
                             }
                           else if (doneArray[loop] != "DONE")                  // if the object has a special flag, then hand off to Special_Effects
                                  {  Special_Effect(theItem, doneArray[loop]);
                                  }
                           doneArray[loop] = "DONE";  // mark the action done, so it will be ignored in the future.
                        }
                    }

               }


//Special_Effects handles special-flagged effects
          
             function Special_Effect(theItem, action)
               {  

                  if (action == "CHANGE COLOR")             // this is the color change on the mouseover text from white to red on the small text
                    {  document.styleSheets.mainstyle.rules[0].style.color = FINAL_TEXT_COLOR;
                       rollover="enabled";                 // at this point we can have mousover.  A littel premature...but, hey, let's live dangerously
                    }

                  if (theItem.id == "hand")          // this is the flag to start the hand moving.  It has already faded in by now.
                    {  if (action == "MOVE1")
                         {  hand_1_index = 1;
                            MoveHand_1();
                         }


                    }

                  doneArray[loop]="DONE";  // mark effect completed
               }



// MoveHand and MoveHand_1 animate the disembodied hand

               function MoveHand()
                 {  hand.style.posTop += handY_1[hand_1_index];                 // offset the hand's position
                    hand.style.posLeft += handX_1[hand_1_index];
                    hand.offy = eval(hand.offy)+ eval(handY_1[hand_1_index]);   // offset the hand's resize origin too, while we're at it...
                    hand.offx = eval(hand.offx)+ eval(handX_1[hand_1_index]);
                    hand_1_index++;
                 }


               function MoveHand_1()
                 { if (hand_1_index == pauseframe)  //if the we have reached the frame after which to pause...
                     {  var pause = PAUSE_INTERVAL;
                     }
                   else
                     {  var pause = 0;
                     }

                   if (hand_1_index <= HAND_FRAMES_1)
                     {  MoveHand();
                        window.setTimeout("MoveHand_1();", pause, "JavaScript");  //implements the pause
                     }                       
                 }


//Subscribe_channel & Subscribe_channel2 handle the subscribe button clickstate and action

               function Subscribe_channel2()
                 { subscribe.style.visibility = "visible";
                   subscribeclick.style.visibility = "hidden";
                   window.external.addChannel(CHANNEL_URL);
                 }

               function Subscribe_channel()
                 { subscribe.style.visibility = "hidden";
                   subscribeclick.style.visibility = "visible";
                   window.setTimeout("Subscribe_channel2();", 1, "JavaScript");
                 }
           
        </SCRIPT>

        <SCRIPT for=window event=onresize()>  // handles resize events during display by sending them on to Resize_Handler

           Resize_Handler();

        </SCRIPT>  

           

    </HEAD>

    <BODY   ONLOAD="Init();" ID=theBody  BGCOLOR="000033"  TEXT="FFFFFF"  SCROLL=no >


<!-- Big background text -->

         <SPAN ID=bigBGText  CLASS=bground  offx=-1000 offy=-330
               STYLE="
                   color: #003366;
                   font-size: 14pt;
                   left: 0;
                   top: 0;
                   width: 460;
                   height: 365;
                   z-index: -90;
                   margin-top: 0;
                   position: absolute;
                   line-height: 1.6;">

<NOBR>project:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuffproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuffproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuffproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuff</NOBR>
<NOBR>startrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsirelandstartrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsirelandstartrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsirelandstartrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsireland</NOBR>
<NOBR>msnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguide</NOBR>
<NOBR>traceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccelleratetraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccelleratetraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccelleratetraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccellerate</NOBR>
<NOBR>popmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefind</NOBR>
<NOBR>thecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligentthecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligentthecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligentthecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligent</NOBR>
<NOBR>thisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrends</NOBR>
<NOBR>U2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonline</NOBR>
<NOBR>moneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanada</NOBR>
<NOBR>arts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateants</NOBR>
<NOBR>synchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisition</NOBR>
<NOBR>msn.comreferencesotheby'sinternetcentermuppets.comtrafficiformationspammnreferencesotheby'sinternetcentermuppets.com<!--*sidewalk*-->sidewalktrafficinformation<!--*gaming*-->internet-gamingspammsn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspammsn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspam</NOBR>
<NOBR>peoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeople<!--*zone*-->zonefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwideweb</NOBR>
<NOBR>iiiiismallmindedgodspokenworldifoodbiteslotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbites<!--customize-->customizelotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforums</NOBR>

<NOBR>projectwatproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuffproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuff<!--*microsoft*-->microsoftprojectwatmicrosoftchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuffproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuff</NOBR>
<NOBR>startrek:continuummungoprifffunderwirev-stylemungoparkfriendsonlineforumsirelandstartrek:continuumrifffunderwirev-style<!--*msnbc*-->msnbcmungoparkfriendsonlineforumsnews<!--*investor*-->investorirelandstartrekcontinuumrifffunderwirev-stylemungoparkfriendsonlineforumsirelandstartrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsireland</NOBR>
<NOBR>msnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguide</NOBR>
<NOBR>iiiitraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfam.comaccelleratetraceyullmantakesontheinternetnet<!--*carpoint*-->carpointwitstheminingcompanyonparenting<!--*search*-->searchaccelleratetraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccelleratetraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccellerate</NOBR>
<NOBR>popmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefind</NOBR>
<NOBR>thecypherieCMJcollegemusicjournalgetworkinggetencartainvestorpaulisdeadintelligentthecypherieCMJcollegemusicjournal<!--*expedia*-->expediagetworkingpaulsdeadintelligence<!--*encarta*-->encartatthecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligentthecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligent</NOBR>
<NOBR>thisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrends</NOBR>
<NOBR>U2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonline</NOBR>
<NOBR>moneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneymoncoeurexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanada</NOBR>
<NOBR>arts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateants</NOBR>
<NOBR>synchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisition</NOBR>
<NOBR>msn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspammsn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspammsn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspammsn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspam</NOBR>
<NOBR>peoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwideweb</NOBR>
<NOBR>smallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforums</NOBR>

<NOBR>project:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuffproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuffproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuffproject:watchfirelinkstation4smallmindedgodspokenworldfoodbiteslotsastuff</NOBR>
<NOBR>startrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsirelandstartrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsirelandstartrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsirelandstartrek:continuumrifffunderwirev-stylemungoparkfriendsonlineforumsireland</NOBR>
<NOBR>msnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguidemsnoneclickawaysidewalk.comlinkstation2encartaastrology@watercoolerukbuyersguide</NOBR>
<NOBR>traceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccelleratetraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccelleratetraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccelleratetraceyullmantakesontheinternetnetwitstheminingcompanydisney'sfamily.comaccellerate</NOBR>
<NOBR>popmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefindpopmartiewebcarpointmamamsnplanetretrospect360microsoftwineguidefind</NOBR>
<NOBR>thecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligentthecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligentthecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligentthecypherieCMJcollegemusicjournalgetworkingencartainvestorpaulisdeadintelligent</NOBR>
<NOBR>thisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrendsthisisnotatestmsnbccartalkmindaerobicsforevercoolspike'sworldgermanyfuturetrends</NOBR>
<NOBR>U2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonlineU2onparentingvanishingpointdisney'sdailyblastchatboxsearchessentialsonline</NOBR>
<NOBR>moneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanadamoneyinsiderexpediahardrocklivecustompagemisspiggy.commotorsitecanada</NOBR>
<NOBR>arts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateantsarts&entertainmentshoppingiejapanspecialeventsinternet-gamingcommunicateants</NOBR>
<NOBR>synchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisitionsynchronicitycustomizeie4livejimhenson'sstorytimelinkszonemsn.cominquisition</NOBR>
<NOBR>msn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspammsn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspammsn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspammsn.comreferencesotheby'sinternetcentermuppets.comtrafficinformationspam</NOBR>
<NOBR>peoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwidewebpeoplefinderlocalinfomsninternationalmsnfrancegreatstuffmintworldwideweb</NOBR>
<NOBR>smallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforumssmallmindedgodspokenworldfoodbiteslotsastuffmungoparkfriendsonlineforums</NOBR>


        </SPAN>


<!-- Small background text (URLs)-->

        <SPAN ID=smallBGText CLASS=bground  offx=-1000 offy=-314
              STYLE="
                   color: #003366;
                   font-size: 8pt;
                   left: 0;
                   width: 460;
                   height: 365;
                   z-index:-90;
                   margin-top: 0;
                   position: absolute;
                   line-height: 2.8;">

<NOBR>http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/</NOBR>
<NOBR>search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://</NOBR>
<NOBR>www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com </NOBR>
<NOBR>http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://</NOBR>
<NOBR>sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/</NOBR>
<NOBR>http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/</NOBR> 
<NOBR>synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.</NOBR>
<NOBR>comhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalk</NOBR>
<NOBR>http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm </NOBR>
<NOBR>.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1</NOBR>
<NOBR>.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy</NOBR>
<NOBR>http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/</NOBR>
<NOBR>http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/</NOBR>

<NOBR>http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/</NOBR> 

<NOBR>http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/</NOBR>
<NOBR>search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://</NOBR>
<NOBR>www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com </NOBR>
<NOBR>http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://</NOBR>
<NOBR>sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/</NOBR>
<NOBR>http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/</NOBR> 
<NOBR>synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.</NOBR>
<NOBR>comhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalk</NOBR>
<NOBR>http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm </NOBR>
<NOBR>.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1</NOBR>
<NOBR>.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy</NOBR>
<NOBR>http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/</NOBR>
<NOBR>http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/</NOBR>

<NOBR>synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.</NOBR>

<NOBR>http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/</NOBR>
<NOBR>search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://search1.htmhttp://msnbc.http://www.forums.msn.com/games/http://http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://</NOBR>
<NOBR>www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com www.infospace.com/msn/people/search1.htm http://netwits.msn.com http://find.msn.com http://msnbc.http://trafficview.seattle.sidewalk1.com </NOBR>
<NOBR>http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://http://expedia.msn.com/ http://slate.msn.com/slate http://msn.com http://www.infospace.com/msn/people/search1.htm http://msnbc. http://</NOBR>
<NOBR>sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/sotheby.msn.com http://onparenting.msn.comhttp://smallmindedgod.msn.com/ http://foodbites.msn.com/foodbiteshttp://synchronicity.msn.com/</NOBR>
<NOBR>http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/http://msnpals.msn.com/msnpals/ http://www.disneyblast.com/ http://watchfire.msn.com/watchfire/ http://www.fodors.com http://www3zdnet.com/</NOBR> 
<NOBR>synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.synchronicity http://muppets.msn.com http://newyork.sidewalk.com http://theplaza.msn.com/ http://ants.msn.com/ants http://motorsite.msn.</NOBR>
<NOBR>comhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalkcomhttp://popmartonline.msn.com http://projectwatchfire.msn.com http://investor.msn.com http://slate.msn.com http://cmj.msn.com http://cartalk</NOBR>
<NOBR>http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm http://www.pathfinder.com/ http://www.schwab.com http://www.tvguide.com http://home.miningco.com/kids http://find.msn.com/srchmain.htm </NOBR>
<NOBR>.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1.msn.com  http://expedia.msn.com  http://scrawl.msn.com/scrawl http://forums.msn.com http://msnbc/scitech http://trafficview.seattle.sidewalk1</NOBR>
<NOBR>.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy.com http://expedia.msn.com/ http://chatworld.msn.com/http://seattle.sidewalk.com http://zone.msn.com/asp/default.asp http://forums.msn.com/astronomy</NOBR>
<NOBR>http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/http://www.forums.msn.com/games/http://chatworld.msn.com/http://seattle.sidewalk.com/http://forums.msn.com/astronomy/http://scrawmsn.com/</NOBR>
<NOBR>http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/http://zone.msn.com/asp/default.asp http://trafficview.seattle.sidewalk1.com http://expedia.msn.com/ http://www.infospace.com/msn/people/</NOBR>

        </SPAN>



<!-- Images -->

        <IMG SRC="watermk.gif" CLASS=bground ID=watermark  offx=135 offy=76 STYLE="
              z-index: -100;
              position: absolute;">

        <IMG SRC="makethe.gif" ID=makethe  offx=10 offy=10 STYLE="
              z-index: -80;
              position: absolute;
              visibility: hidden;
              filter: revealTrans(duration=0.5, transition=12);">

        <IMG SRC="thisway.gif" ID=thisway  offx=20 offy=5 STYLE="
              z-index: -80;
              position: absolute;
              visibility: hidden;
              filter: revealTrans(duration=0.5, transition=12);">

        <IMG SRC="msnlogo.gif" ID=msnlogo  offx=107 offy=75 STYLE="
              z-index: -70;
              position: absolute;
              visibility: hidden;
              filter: revealTrans(duration=0.5, transition=12);">

        <IMG SRC="sub.gif" ID=subscribe  offx=163 offy=300 ONCLICK="Subscribe_channel();" STYLE="
              z-index: 10;
              position: absolute;
              visibility: hidden;
              filter: revealTrans(duration=0.5, transition=12);">

        <IMG SRC="subclick.gif" ID=subscribeclick  offx=163 offy=300 STYLE="
              z-index: 10;
              position: absolute;
              visibility: hidden;">

        <IMG SRC="hand.gif" ID=hand  offx=210 offy=370 STYLE="
              z-index: 30;
              position: absolute;
              visibility: hidden;
              filter: revealTrans(duration=0.5, transition=12);">



<!-- Small fade text -->

        <SPAN ID=carpoint indx=0 CLASS=colorchange  offx=10 offy=184
              ONMOUSEOVER="this.style.color = M_O_COLOR; Hot_A();"
              ONMOUSEOUT="this.style.color = FINAL_TEXT_COLOR; Cold_A();"
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   height: 30;
                   width: 50;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           carpoint

        </SPAN>


        <SPAN ID=msnbc indx=1 CLASS=colorchange  offx=20 offy=124
              ONMOUSEOVER="this.style.color = M_O_COLOR; Hot_A();"
              ONMOUSEOUT="this.style.color = FINAL_TEXT_COLOR; Cold_A();"
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   margin-top: 0;
                   height: 30;
                   width: 50;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           msnbc

        </SPAN>


        <SPAN ID=expedia indx=2 CLASS=colorchange  offx=25 offy=244
              ONMOUSEOVER="this.style.color = M_O_COLOR; Hot_A();"
              ONMOUSEOUT="this.style.color = FINAL_TEXT_COLOR; Cold_A();"
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   height: 30;
                   width: 50;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           expedia

        </SPAN>


        <SPAN ID=customize indx=3 CLASS=colorchange  offx=16 offy=64
              ONMOUSEOVER="this.style.color = M_O_COLOR; Hot_A();"
              ONMOUSEOUT="this.style.color = FINAL_TEXT_COLOR; Cold_A();"
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   height: 30;
                   width: 50;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           customize

        </SPAN>


           <SPAN ID=invest indx=4 CLASS=colorchange  offx=356 offy=94
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   height: 50;
                   width: 100;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           <DIV ID=investdiv1 indx=4 
               ONMOUSEOVER="investdiv1.style.color = M_O_COLOR; investdiv2.style.color = M_O_COLOR; Hot_A();"
               ONMOUSEOUT="investdiv1.style.color = FINAL_TEXT_COLOR; investdiv2.style.color = FINAL_TEXT_COLOR; Cold_A();"
               STYLE="
               position: relative;
               top: 0;
               left: 0;">

               microsoft

           </DIV>

           <DIV ID=investdiv2 indx=4 
               ONMOUSEOVER="investdiv1.style.color = M_O_COLOR; investdiv2.style.color = M_O_COLOR; Hot_A();"
               ONMOUSEOUT="investdiv1.style.color = FINAL_TEXT_COLOR; investdiv2.style.color = FINAL_TEXT_COLOR; Cold_A();"
               STYLE="
               position: relative;
               top: 8;
               left: 26;">

               investor

           </DIV>


        </SPAN>


        <SPAN ID=gaming indx=5 CLASS=colorchange  offx=281 offy=4
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   height: 50;
                   width: 150;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           <DIV ID=gamingdiv1 indx=5 
               ONMOUSEOVER="gamingdiv1.style.color = M_O_COLOR; gamingdiv2.style.color = M_O_COLOR; Hot_A();"
               ONMOUSEOUT="gamingdiv1.style.color = FINAL_TEXT_COLOR; gamingdiv2.style.color = FINAL_TEXT_COLOR; Cold_A();"
               STYLE="
               position: relative;
               top: 0;
               left: 0;">

               internet<SPAN ID=aspan indx=5 STYLE="color: #000033">-</SPAN>gaming

           </DIV>

           <DIV ID=gamingdiv2 indx=5 
               ONMOUSEOVER="gamingdiv1.style.color = M_O_COLOR; gamingdiv2.style.color = M_O_COLOR; Hot_A();"
               ONMOUSEOUT="gamingdiv1.style.color = FINAL_TEXT_COLOR; gamingdiv2.style.color = FINAL_TEXT_COLOR; Cold_A();"
               STYLE="
               position: relative;
               top: 8;
               left: 50;">

               zone

           </DIV>


        </SPAN>

        <SPAN ID=search indx=6 CLASS=colorchange  offx=367 offy=184
              ONMOUSEOVER="this.style.color = M_O_COLOR; Hot_A();"
              ONMOUSEOUT="this.style.color = FINAL_TEXT_COLOR; Cold_A();"
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   height: 30;
                   width: 50;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           search

        </SPAN>


        <SPAN ID=sidewalk indx=7 CLASS=colorchange  offx=68 offy=4
              ONMOUSEOVER="this.style.color = M_O_COLOR; Hot_A();"
              ONMOUSEOUT="this.style.color = FINAL_TEXT_COLOR; Cold_A();"
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   height: 30;
                   width: 50;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           sidewalk

        </SPAN>


        <SPAN ID=encarta indx=8 CLASS=colorchange  offx=366 offy=244
              ONMOUSEOVER="this.style.color = M_O_COLOR; Hot_A();"
              ONMOUSEOUT="this.style.color = FINAL_TEXT_COLOR; Cold_A();"
              STYLE="
                   font-size: 14pt;
                   left: 0;
                   height: 30;
                   width: 50;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           encarta

        </SPAN>



<!-- Large fade text -->
                  
        <SPAN ID=msnbcBig  CLASS=largeclip offx=75 offy=130
              STYLE="
                   color: #FFFFFF;
                   font-size: 24pt;
                   left: 0;
                   z-index: -80;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           get the latest news

        </SPAN>

        <SPAN ID=investBig CLASS=largeclip  offx=98 offy=55
              STYLE="
                   color: #FFFFFF;
                   font-size: 24pt;
                   left: 0;
                   z-index: -80;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           manage your investments

        </SPAN>

        <SPAN ID=expediaBig CLASS=largeclip  offx=2 offy=215
              STYLE="
                   color: #FFFFFF;
                   font-size: 24pt;
                   left: 0;
                   z-index: -80;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           plan and book a trip

        </SPAN>

        <SPAN ID=carpointBig CLASS=largeclip  offx=80 offy=160
              STYLE="
                   color: #FFFFFF;
                   font-size: 24pt;
                   left: 0;
                   z-index: -80;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           shop for your next car

        </SPAN>

        <SPAN ID=gamingBig CLASS=largeclip  offx=60 offy=60
              STYLE="
                   color: #FFFFFF;
                   font-size: 24pt;
                   left: 0;
                   z-index: -80;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           play games over the internet

        </SPAN>

        <SPAN ID=customizeBig CLASS=largeclip  offx=10 offy=35
              STYLE="
                   color: #FFFFFF;
                   font-size: 24pt;
                   left: 0;
                   z-index: -80;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           customize your start page

        </SPAN>

        <SPAN ID=searchBig CLASS=largeclip  offx=125 offy=200
              STYLE="
                   color: #FFFFFF;
                   font-size: 24pt;
                   left: 0;
                   z-index: -80;
                   margin-top: 0;
                   position: absolute;
                   visibility: hidden;
                   filter: revealTrans(duration=0.5, transition=12);">

           find the best websites

        </SPAN>



<!-- *** Popup Menus *** -->

<!--carpoint popup-->

        <DIV  ID=blurb  CLASS=blurbclass indx=0 offx=105 offy=100
               STYLE="
                   position: absolute;">
             
              <DIV CLASS=blurbmargins>               

                  Up-to-date, objective information on all the major models sold in the United States, with links to one of the Internet's leading online purchase-lease programs.                 

                <CENTER>

                    <IMG SRC="car.jpg" BORDER="0" HSPACE="0" VSPACE="0">

                </CENTER>

              </DIV>   

         </DIV>


<!--msnbc popup-->

        <DIV  ID=blurb  CLASS=blurbclass  indx=1  offx=95 offy=45
               STYLE="
                   position: absolute;">

            <DIV CLASS=blurbmargins>

             Top national and local stories, market updates, latest scores and your four-day forecast, brought to you by MSNBC's award-winning news team.    

                <CENTER>

                    <IMG SRC="msnbc.jpg" BORDER="0" HSPACE="0" VSPACE="0">

                </CENTER>

            </DIV>

         </DIV>



<!--expedia popup-->

        <DIV  ID=blurb  CLASS=blurbclass  indx=2  offx=125 offy=160
               STYLE="
                   position: absolute;">

             <DIV CLASS=blurbmargins>

                Research, reserve and buy your travel online, learn about low airfares by e-mail, and check out the latest travel news, ideas and advice.   

                <CENTER>

                    <IMG SRC="exp.jpg" BORDER="0" HSPACE="0" VSPACE="0">

                </CENTER>

             </DIV>
             
         </DIV>


<!--customize popup-->

         <DIV  ID=blurb  CLASS=blurbclass  indx=3  offx=123 offy=10
               STYLE="
                   position: absolute;">

             <DIV CLASS=blurbmargins>

             An easy way to gather your favorite news, weather, sports, financial, and other information on one page...the Web the way <STRONG>you</STRONG> want it.    

                <CENTER>

                    <IMG SRC="cust.jpg" BORDER="0" HSPACE="0" VSPACE="0">

                </CENTER>

             </DIV>
             
         </DIV>


<!--investor popup-->

        <DIV  ID=blurb  CLASS=blurbclass  indx=4  offx=82 offy=37
               STYLE="
                   position: absolute;">

             <DIV CLASS=blurbmargins>

                Powerful tools and valuable information to help personal investors make investment decisions, track their securities, and follow the market.

                <CENTER>

                    <IMG SRC="invst.jpg" BORDER="0" HSPACE="0" VSPACE="0">

                </CENTER>                 

             </DIV>
             
         </DIV>


<!--gaming popup-->

        <DIV  ID=blurb  CLASS=blurbclass  indx=5  offx=15 offy=7
               STYLE="
                   position: absolute;">

             <DIV CLASS=blurbmargins>

             From the classics to the latest releases, here are the greatest multiplayer games, the easiest matchmaking, and the most action per player on the Net!

                <CENTER>

                    <IMG SRC="zone.jpg" BORDER="0" HSPACE="0" VSPACE="0">

                </CENTER>

             </DIV>
             
         </DIV>


<!--search popup-->


        <DIV  ID=blurb  CLASS=blurbclass  indx=6  offx=98 offy=110
               STYLE="
                   position: absolute;">

             <DIV CLASS=blurbmargins>

             Powerful search engines and compre- hensive directories make it easy to find whatever you're looking for on the Web.

                <CENTER>

                    <IMG SRC="sear.jpg" BORDER="0" HSPACE="0" VSPACE="2">

                </CENTER>

             </DIV>
             
         </DIV>


<!--sidewalk popup-->

        <DIV  ID=blurb  CLASS=blurbclass  indx=7  offx=165 offy=2
               STYLE="
                   position: absolute;">

             <DIV CLASS=blurbmargins>

                Local information that helps you choose how best to spend your time and money.

                <CENTER>

                    <IMG SRC="sidewalk.jpg" BORDER="0" HSPACE="0" VSPACE="2">

                </CENTER>

             </DIV>
             
         </DIV>


<!--encarta popup-->

        <DIV  ID=blurb  CLASS=blurbclass  indx=8  offx=80 offy=140
               STYLE="
                   position: absolute;">

             <DIV CLASS=blurbmargins>

             A free concise encyclopedia that contains 16,000 articles and more than 2,200 photos, illustrations, maps, charts, and tables to satisfy your basic online research needs.

                <CENTER>

                    <IMG SRC="enc.jpg" BORDER="0" HSPACE="0" VSPACE="2">

                </CENTER>

             </DIV>
             
         </DIV>


<!-- Sound Effects -->
                  
            <BGSOUND SRC="" ID=backgroundmidi>

            <BGSOUND SRC="" ID=testsound>

            
        
    </BODY>

</HTML>
