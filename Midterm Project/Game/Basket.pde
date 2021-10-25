class Goal {
 
  //Variables
  PVector pos1;
  PVector vel;

  float score;
  float strike; 
  
  boolean point = false;
  
  //Constructor
  
  Goal() {
   
   //This allows the target to be different each time
   pos1 = new PVector(random(200, 600), random(0, height/2));
   vel = new PVector(random(-10, 10), random(-10,10)); 
   
   //The counter to the score and misses
   score = 0; 
   strike = 0; 
   
  }
   
   //Method 
   void display() {
     
     stroke(0);
     strokeWeight(3);
     fill(255, 0, 0);
     rect(pos1.x, pos1.y, random(50), random(50)); 
     
  }
 
   void update() {
  
     pos1.add(vel);
   
     //This allows the target to stay within the range of the cannon fire 
     if (pos1.x <= 200 || pos1.x >= 600) {
       
       vel.x *= -1;
       
     }
   
     if (pos1.y <= 0 || pos1.y >= height/2) {
       
       vel.y *= -1; 
       
     }
   
    //Once the the score or the misses reaches its target it will display the game over screen 
     if (score >= 10 || strike >= 3) {
       
       end.display();
       
     }

   }
     
  
   void run() {
     
    update();
    display();
    
   }
    
}
  
  
  
