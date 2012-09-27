/* 
* Loads a text file of numbers
* to drive the animation values
* for changing the "leading"
* between lines of text.
*
* Makes use of loadFile(), String.split() and textLeading().
*
*/

// Slicing and dicing a string
String sentence;
String[] words;

// Animating leading between lines of a string
float leading, leadingSpeed;

//Loading a text file of numbers
String [] fibonacci;
int f;

void setup() {
  size(800, 480);

  background(0);

  sentence = " The \n fat \n cat \n in the hat \n on the mat \n is really a \n rat ";
  words = sentence.split(" ");

  leading = 0;
  leadingSpeed = 1;

  // Loads system fonts as bitmapped images
  textAlign(CENTER);

  // Load data from file
  // This is a dumb example because fibonacci is actually 
  // a number series you can describe easily with code
  // How would you do that?
  fibonacci = loadStrings("fibonacci.txt");
  
  textSize(24);
}

void draw() {

  if (frameCount%10 == 0) {
    background(0);
    
    // Bounce the leading
    if (leading > 50 || leading < 0) 
      leadingSpeed *= -1;
      
    // Animate the leading with boring old "plus speed"
    //leading += leadingSpeed;


    // Using number sequence to animate leading instead by stepping through the fibonacci array
    leading = float(fibonacci[f]);
    f += leadingSpeed;
    
    // Go back and forth in the array when you reach the ends
    if (f > fibonacci.length-2 || f < 1) {
      leadingSpeed *=-1;
      println("REIGN IT IN");
    }
    
    textLeading(leading); 
    text(sentence, width/2, height/5);
  }
}

