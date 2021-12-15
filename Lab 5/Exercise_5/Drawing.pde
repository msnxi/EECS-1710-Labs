float maxThreshold = 0.1; //when to activate 
float minThreshold = 0.01; //when to restart
color bgColor = color(170, 17, 188); //color of the background
color circleColor = color(215, 178, 229); //color of the circle    
float circleSize = 100; //size of the circle

void settings() {
 size(800, 600, "processing.opengl.PGraphics2D"); 
}

void setup() {
    
  setupMinim();
}

void draw() {
  updateMinim();
  
  float amp = getAmp();
  
  if (amp > maxThreshold) {
     fill(0, 5);
     rect(0, 0, width, height);
    
    //circle drawing
    ellipseMode(CENTER);
    fill(circleColor);
    stroke(bgColor);
    ellipse(random(0, 800), random(0, 600), circleSize, circleSize); 
    
    
  } else if (amp < minThreshold) {
    background(0,0,0);
  }
}

void exit() {
  stopMinim();
}
