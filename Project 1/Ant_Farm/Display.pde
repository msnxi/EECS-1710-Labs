class BG {
 
  //Variables
  PImage dirt; 
  
  
  //Constructor
  BG() {
  
    dirt = loadImage("dirty.jpg");
    imageMode(CENTER);
  
}
  //Methods 
  
  void display() {
    
    //displays the ants
    image(dirt, width/2, height/2); //https://www.pinterest.ca/pin/313211349065152899/
   
     for (int i = 0; i < antnums; i++) {
     
       ant[i].run();
       
    } 
  
  }
  
}
