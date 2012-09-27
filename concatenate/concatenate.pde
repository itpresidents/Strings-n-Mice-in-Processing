/*
* Builds a long string from an array of words
* "manually" through concatenation.
*/


// An array of words to concatenate
String[] words;

// A String variable to hold concatenated words
String hugeAssString;

void setup() {
  size(1200, 200);
  words = new String[10];

  // Initialize the array of words
  // How would you do this by loading words from a file?
  for(int i = 0; i< words.length; i++) {
     words[i] = "apple"; 
  }
  
  // Initialize the String as an empty string
  hugeAssString = "";
  

}


void draw() {
  background(0);
  // Add each word in the array to the end of the hugeAssString
  for(int i = 0; i< words.length; i++) {
    hugeAssString += words[i] + ", ";
  }
  
  // Display the hugeAssString
  textSize(64);
  text(hugeAssString, 0, 50);
  
  // How would you make sure that the text "wrapped" before it hit the right edge of the window?
  // Hint try using the textWidth() function with \n
}
  

