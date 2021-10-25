class Food {
 
  //Variables 
  PImage nuts;
  PVector pos;

  
  //Constructor
  Food () {
    
    pos = new PVector(random(0, width), random(0, height));
   
    nuts = loadImage("nuts.png"); //https://www.pngall.com/nuts-png/download/48644
    nuts.resize(nuts.width/25, nuts.height/25); 
    
  }
 
  //Methods
  
  void display() {
    
   image(nuts, pos.x, pos.y); 
    
  }
  
}
  
