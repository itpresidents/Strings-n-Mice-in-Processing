/*
* Click button on and off with hover effect
* Makes use of mouseClicked()
*/

// Booleans to keep track of whether button is ON/OFF
// Whether your mouse is hovering over button
boolean isOn = false;
boolean isHovering = false;

// Button Attributes
float buttonXLoc, buttonYLoc;
int buttonWidth = 50;
int buttonHeight = 20;

void setup() {
  size(400, 400);
  
  // Center the button
  rectMode(CENTER);
  buttonXLoc = width/2;
  buttonYLoc = height/2;
  
}

void draw() {
  background(255);
  noStroke();
  
  // Check for hovering
  if(mouseX > buttonXLoc-buttonWidth/2 && mouseX < buttonXLoc + buttonWidth/2 && mouseY > buttonYLoc - buttonHeight/2 && mouseY < buttonYLoc + buttonHeight/2)
    isHovering = true;
  else
    isHovering = false;
  
  // If the button is on *or* you're hovering over it, make it green
  // How would you make the button turn grey when you click it off, but your mouse is still hovering over it?
  // Hint: you need a boolean to capture when the button has gone from on to off without leaving the hover area
  if(isOn || isHovering)
    fill(0, 255, 0);    
    
  else
    fill(128);
 
  rect(buttonXLoc, buttonYLoc, buttonWidth, buttonHeight);
  
}

void mouseClicked() {
    // Turn the button on/off if your mouse clicked and you're hovering over it
    if(isHovering)
      isOn = !isOn; 
}



