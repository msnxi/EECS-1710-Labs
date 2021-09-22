color bgColor = color(170, 17, 188); //color of the background
color circleColor = color(215, 178, 229); //color of the circle    
float circleSize = 100; //size of the circle

void setup() { 
  size(800, 600, P3D); 
  background(bgColor);   
}

void draw()  {
  if (mousePressed)  {
    
    //fade effect
    fill(0, 5);
    rect(0, 0, width, height);
    
    //circle drawing
    ellipseMode(CENTER);
    fill(circleColor);
    stroke(bgColor);
    ellipse(mouseX, mouseY, circleSize, circleSize); 
    
  }
  
  if(keyPressed)  {
    
    fill(bgColor);
    rect(0, 0, width, height);
  }
}
