//The Night background

class Night{
   
  color bgColor;
  color moonColor;
 
 Night(){
   bgColor = color(0);
   moonColor = color(224, 223, 204);
 }
  
 void update() {   
   
   stroke(moonColor); 
   fill(moonColor);
   ellipse(700, 100, 150, 150);  
   
 }
}
