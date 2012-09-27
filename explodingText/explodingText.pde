/*
* Not quite exploding characters that you can magnetize to your mouse
* Change the background with a mouseclick
*
* Commented out is show a random character from "exploded words" version
*
* Makes use of loadFont(), String.length(), String.split()
*/


String explodeSentence = "Processing is hard! No it's easy! No it's hard!";
//String [] explodeArray = split(explodeText, " ");
char [] explodeChars = new char [explodeSentence.length()];
float[] explodeX = new float[explodeChars.length];
float[] explodeY = new float[explodeChars.length];

PFont ourOwnFont;

void setup() {
  size(1200, 800);  

  // Start everything in the center
  // Load array of characters with letters from text
  for (int i = 0; i < explodeChars.length; i++) {
    explodeChars[i] = explodeSentence.charAt(i);
    explodeX[i] = width/2;
    explodeY[i] = height/2;
  }
  
  // Load a found
  ourOwnFont = loadFont("BodoniSvtyTwoOSITCTT-Bold-48.vlw");
  textFont(ourOwnFont);
}

void draw() {
  
  // Change background when the mouse is pressed down
  if(mousePressed) {
     background(128); 
  }
  else {
    background(0);
  }
  
  for (int i = 0; i < explodeChars.length -1; i++) {
    
    // Look for letters that are less than 5 pixels away from the mouse
    if(dist(mouseX, mouseY, explodeX[i], explodeY[i]) < 5) {
       explodeX[i] = mouseX;
       explodeY[i] = mouseY;
    } 
    else {
      // Crazy formula which really just amounts to a tiny number
      explodeX[i] += random(-(i*8.7/32+906)*.01, (i*8.7/32+906)*.01);
      explodeY[i] += random(-(i/31+45)/6, (i/31+45)/6);
    }
    
    //char showThisChar = explodeArray[i].charAt(int(random(explodeArray[i].length())));
    //text(showThisChar, explodeX[i], explodeY[i]);
    text(explodeChars[i], explodeX[i], explodeY[i]);
  }
}

// Change the background for a split second when you press the mouse
//void mousePressed() {
//   background(128); 
//}

