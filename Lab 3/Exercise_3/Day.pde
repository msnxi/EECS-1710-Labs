//The Day background 

class Day{
 
  color bgColor;
  color sunColor;
 
 Day(){
   bgColor = color(25, 189, 232);
   sunColor = color(214, 252, 0);
 }
  
 void update() {
  
  stroke(sunColor); 
  fill(sunColor);
  ellipse(100, 100, 150, 150); 
 }
 
}
