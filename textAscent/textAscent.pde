/*
* Makes using of textAscent(), textDescent() and textLeading()
* so that when you animate the font-size, 2 lines of text never
* overlap.
*/

//Creating an explicitly defined font
PFont explicitFont;

//Variables for "moving" font size
float fontSize1, fontSize2, fontSize1Speed, fontSize2Speed;

void setup() {
  size(800, 480);
  
  //Where to anchor text - analogous to rectMode()
  textAlign(CENTER);

  // Loads system fonts as bitmapped images
  explicitFont = loadFont("Zapfino-128.vlw");
  
  // Vector-version
  // Can import your own font in .ttf or .otf formats
  //explicitFont = createFont("Zapfino", 32);
  
  // Initialize variables for "moving" font sizes
  fontSize1 = 64;
  fontSize2 = 64;
  fontSize1Speed = .1;
  fontSize2Speed = -.1;
  
}

void draw() {
    background(0);
       
    textFont(explicitFont);
    
    fontSize1 += fontSize1Speed;
    textSize(fontSize1);
    float line1Y = height/2;
    text("yyyyyy", width/2, line1Y);
    float line1Descent = textDescent();
    
    fontSize2 += fontSize2Speed;
    textSize(fontSize2);
    float line2Ascent = textAscent();
    float line2Leading = line1Y + (line2Ascent + line1Descent)*.8;
    println(line2Leading);
    text("llllll", width/2, line2Leading);
    
    //Change direction of moving font-size (growing versus shrik
    if(fontSize1 > 116 || fontSize1 < 12) fontSize1Speed *= -1;
    if(fontSize2 > 116 || fontSize2 < 12) fontSize2Speed *= -1;
}

