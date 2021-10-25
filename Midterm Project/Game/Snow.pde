class Snow {
  
  //Variables 
  PVector pos;
  PVector vel;
  
  float size; 
   
  
  //Constructor
  
  Snow(float x, float y) {
    
    pos = new PVector(x, y);
    vel = new PVector(random(-2, 2), random(1, 10));
    
    size = 2;
    
  }


  //Method
  
  void display() {
  
    stroke(255); 
    strokeWeight(4);
    ellipse(pos.x, pos.y, size, size);
    
 }

  void update() { 
   
    //The snow effect in the main menu
    pos.add(vel); 
   
    if (pos.y >= height) {
    
      pos.y = 0;
      pos.x = random (0, 750);
      
   }
   
    if (pos.x >= width || pos.x <= 0) {
    
      vel.x = vel.x * -1;
      
   }
   
  } 
  
  void run() {
   
    update();
    display();
    
  }
  
}
