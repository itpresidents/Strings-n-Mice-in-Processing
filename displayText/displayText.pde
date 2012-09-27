/*
* Randomly cycles through all the fonts on your computer
* Makes use of PFont, PFont.list(), createFont(), loadFont().
*/


//Picking randomly from system fonts
String[] fontList;
PFont randomFont;
int randomFontIndex;

//Creating an explicitly defined font
PFont explicitFont;

void setup() {
  size(800, 480);
  
  //Where to anchor text - analogous to rectMode()
  textAlign(CENTER);

  //Get the list of all system fonts
  //Pick randomly from it
  fontList = PFont.list();
  println(fontList);
  randomFontIndex = 0;
  randomFont = createFont(fontList[randomFontIndex], 32);

  // Loads system fonts as bitmapped images
  // You need to first "Create Font..." from the Tools menu
  explicitFont = loadFont("Zapfino-128.vlw");
  
  // Vector-version
  // You can import your own font in .ttf or .otf formats
  //explicitFont = createFont("Zapfino", 32);
    
}

void draw() {
    background(0);
    
  // Update font once a second (Processing runs at 60 frames per second)
  // Use modulo to create pattern
  if (frameCount%60 ==0) {


    randomFontIndex = int(random(fontList.length));
    randomFont = createFont(fontList[randomFontIndex], 32);

  }
    textFont(randomFont);
    text("This text is in a randomly selected \n from all built-in Processing fonts.", width/2, height/5);
       
    textFont(explicitFont);
    textSize(24);
    text("This text is in an explicitly selected font.", width/2, 3*height/4);
    
}

