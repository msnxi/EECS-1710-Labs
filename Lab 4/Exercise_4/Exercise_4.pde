PImage img;
PShape a;
PShape b;
PShape c;
float rot = 0.01;
float rotDelta = 0.01;


void setup() {
  size(500, 500, P2D);
  
  shapeMode(CENTER);

  img = createImage(width, height, RGB);
  img.loadPixels();
  colorNoise();
 
  //the letter A
    a = createShape();
    a.beginShape();
    a.translate(170, 10);
    a.fill(255,0,0);
    a.vertex(4, -3);
    a.fill(0, 255,0);
    a.vertex(-175, 353);
    a.stroke(225);
    a.vertex(-43, 220);
    a.vertex(57, 219);
    a.vertex(177, 358);
    a.beginContour();
    a.vertex(-40,180);
    a.vertex(0, 60);
    a.vertex(40,180);
    a.endContour();
    a.endShape(CLOSE);

   //the letter B 
    b = createShape();
    b.beginShape();
    b.translate(50, 10);
    b.fill(0, 255, 0);
    b.vertex(0, 0, 0, 0);
    b.fill(255, 0, 0);
    b.vertex(-11, 313, -11, 313);
    b.vertex(202, 230, 202, 230);
    b.vertex(59, 145, 59, 145);
    b.vertex(204, 24, 204, 24);
    b.beginContour();
    b.vertex(40, 120, 40,120);
    b.vertex(40, 30, 40, 30);
    b.vertex(120, 50, 120, 50);
    b.endContour();
    b.beginContour();
    b.vertex(30, 260, 30, 260);
    b.vertex(30, 180, 30, 180);
    b.vertex(110, 230, 110, 230);
    b.endContour();
    b.endShape(CLOSE);
 
   //the letter C 
    c = createShape();
    c.beginShape();
    c.translate(220, 0);
    c.fill(0, 0, 255);
    c.vertex(0.0, 0.0, 0, 0);
    c.vertex(-177, -7, 0, 1);
    c.vertex(-168, 282, 1, 1);
    c.vertex(51, 269, 0, 1);
    c.vertex(-127, 246, 1, 0);
    c.vertex(-146, 21, 0, 0);
    c.endShape(CLOSE);
    
  
  background(0);
}

void draw() {
  
  //The rotation of each letter
  pushMatrix();
  translate(width/2, height/2);
  rotate(rot);
  rot += rotDelta;
  if (rot > TWO_PI) {
    rot = 0;
    colorNoise();
  }

  shape(a, 0, 0);
  popMatrix();
  
   pushMatrix();
  translate(width/2, height/2);
  rotate(rot);
  rot += rotDelta;
  if (rot > TWO_PI) {
    rot = 0;
    colorNoise();
  }

  shape(b, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rot);
  rot += rotDelta;
  if (rot > TWO_PI) {
    rot = 0;
    colorNoise();
  }

  shape(c, 200, 200);
  popMatrix();
  
  
}



//colour effect
void colorNoise() {
  for (int i=0; i<img.pixels.length; i++) {
    float colorChoice = random(1);
    if (colorChoice < 0.33) {
      img.pixels[i] = color(random(255), random(255), random(255));
    } else if (colorChoice >= 0.33 && colorChoice < 0.66) {
      img.pixels[i] = color(random(127), random(127), random(127));
    } else {
      img.pixels[i] = color(random(255), random(127), random(255));
    }
  }
  img.updatePixels();
}
