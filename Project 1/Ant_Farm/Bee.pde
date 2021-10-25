class Bee {
 
  //Variable
  PVector pos;
  PVector vel; 
   
  
  //Constructor
  Bee() { 
    
    pos = new PVector(width/2, height);
    vel = new PVector(random(-2, 2), -2);
    
  }
  
  //Methods
  void display() {
    
    stroke(193, 189, 60);
    strokeWeight(5);
    fill(0);
    ellipse(pos.x, pos.y, 20, 20);
     
  }
  
  void update() {
   
    pos.add(vel);
    
    //keeps bee inside of screen
    if ( pos.x <= 0 || pos.x >= width ){
    
      vel.x *= -1;
    
   }else if (pos.y <= 0 || pos.y >= height) {
     
    vel.y *= -1;
     
   }
   
   
   
  }
  
  void run() {
   
   display();
   update();
   
  }
}
