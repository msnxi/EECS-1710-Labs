PImage space;
PImage space2;
PImage rocket; 
PImage asteroid;

PVector rPos;
PVector rVel;

PVector aPos1;
PVector aPos2;
PVector aVel;

void setup() {
  
  //background 
  size(800, 600);
  frameRate(60);
  
  //space background
  space = loadImage("spacebg.jpg");
  space.resize(space.width * (height / space.height), height); 
  
  //rocket setup
  rocket = loadImage("spaceship.png");
  rocket.resize(rocket.width/2, rocket.height/2);
  imageMode(CENTER);
  rPos = new PVector(width/2, 700);
  rVel = new PVector(0, -5);
  
  //asteroid setup
  asteroid = loadImage("asteroid.png");
  asteroid.resize(asteroid.width/4, asteroid.height/4);
  imageMode(CENTER);
  aPos1 = new PVector(random(0, 300), -100);
  aPos2 = new PVector(random(500, width), -100); 
  aVel = new PVector(0, 5); 
  
 }

void draw() {
 
 image(space, width/2, height/2);
 image(rocket, rPos.x, rPos.y);
 image(asteroid, aPos1.x, aPos1.y);
 image(asteroid, aPos2.x, aPos2.y);
 
 rPos.add(rVel);
 aPos1.add(aVel);
 aPos2.add(aVel);
 
 if (rPos.y <= -100) {
   rPos.y = 700;
   rPos.x = width/2;
 }

 if (aPos1.y >= 700) {
   aPos1.y = -100;
   aPos1.x = random(0, 300);
 }
 
 if (aPos2.y >= 700) {
   aPos2.y = -100;
   aPos2.x = random(500, width);
 }
 
 
 
  
 
 
  

}
