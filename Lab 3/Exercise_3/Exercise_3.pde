float sDeg;
float mDeg;
float hDeg;

float sRot;
float mRot;
float hRot;

color sHand = color(24, 237, 63);
color mHand = color(10, 15, 245);
color hHand = color(245, 10, 30);
color bgColor;
color dot;

int lastSecond = 0;

int s = second();
int m = minute();
int h = hour();

Day day;
Night night;


void setup() {
 
  size (800, 600, P3D);
  
  day = new Day();
  night = new Night();
  
  //To change the background to night or day
  if (h >= 20 || h < 6){
   bgColor = night.bgColor; 
  } else {
   bgColor = day.bgColor; 
  }  
}



void draw() {
  
  background(bgColor);
  
  //Outline of the clock
  strokeWeight(8);
  stroke(255);
  fill(0);
  ellipse(width/2, height/2, 400, 400);
  
  int s = second();
  int m = minute();
  int h = hour();

  //This part adds the "digital hand". Looks like a bar instead of a hand. Inspired from The Coding Teacher "Clock CHallenge"
  strokeWeight(8);
  stroke(sHand);
  noFill();
  sDeg = map(s, 0, 60, radians(-90), radians(270));
  arc(width/2, height/2, 50, 50, radians(-90), sDeg);
  
  strokeWeight(8);
  stroke(mHand);
  noFill();
  mDeg = map(m, 0, 60, radians(-90), radians(270));
  arc(width/2, height/2, 100, 100, radians(-90), mDeg);
  
  strokeWeight(8);
  stroke(hHand);
  noFill();
  hDeg = map(h % 12, 0, 12, radians(-90), radians(270));
  arc(width/2, height/2, 150, 150, radians(-90), hDeg);
  
   //Creates the line to represent the numbers on a clock
   stroke(255);
   strokeWeight(2);
  for(int i=0; i<12; i++) {
    float rot = ((float) i/12) * TWO_PI;
    
    pushMatrix();
    translate(width/2, height/2);
    rotate(rot);
    line(0, 400/3, 0, 400/2);
    popMatrix();
  
  }
  
   //The seconds hand  
   if (s != lastSecond) {
    sRot = ((float) s / 60) * TWO_PI;
    lastSecond = s;
  }
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(sRot);
  fill(0);
  strokeWeight(4);
  stroke(sHand);
  line(0, 0, 0, -150);
  popMatrix();
  
  //The Moon and the Sun 
  if (h >= 20 || h < 6){
   night.update(); 
  } else {
   day.update(); 
  } 
  
  //Digital Clock to show the hours and the minutes
  textSize(25);
  fill(hHand);
  text(h, 350, 410);
  fill(mHand);
  text(m, 420, 410);
  
  //Blinking dots from a digital clock
  if (s % 2 == 0){
   dot = sHand; 
  } else {
   dot = color(0);  
  }
  
  stroke(dot);
  ellipse(width/2, 395, 3, 3);
  ellipse(width/2, 410, 3, 3);
  
 
  
 
}
