/* 
* Print the characters in a sentence, one at a time
* at approximately the x-location that the character
* appears in the sentence.
*
* Makes use of String.charAt() and charWidth() functions.
*/


String sentence, thisChar;
int charIndex;
float charWidth;

void setup() {
  size(640, 480); 
  fill(0);
  textSize(24);

  sentence = "I want to spell this out one character at a time."; 
  thisChar = "";
  charIndex = 0;
  
  // Average width of each character
  charWidth = textWidth(sentence)/sentence.length();
}

void draw() {
  background(255);
  
  // Only print a character every 10 frames 
  if (frameCount % 10 == 0) {
    
    // Loop around to the beginning when you get to the last character in the sentence
    if (charIndex >= sentence.length()-1)
      charIndex = 0;
    else
      charIndex++;
    
    // Convert character to string
    thisChar = str(sentence.charAt(charIndex));
  }
  
  // Display character
  // Calculate approximate x-position of character
  text(thisChar, charIndex*charWidth + 10, height/3);
  text(sentence, 10, height/2);
}

