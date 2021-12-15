class Game {

//Variables

PImage terrain;

//Constructor

Game() {
 
  terrain = loadImage("mona.jpg");
  terrain.resize(width, height); 
  imageMode(CENTER);

}

//Methods
void display() {
   
  gameScreen = 1;
  
  loadPixels();
  terrain.loadPixels();

  
  for (int x = 0; x < terrain.width; x++) {
    for (int y = 0; y < terrain.height; y++) {
     
      //causes each pixel to change its RGB depending on the location of the mouse.
      int loc = x + y * terrain.width;
      float r = mouseX;
      float z = mouseY; 
      float bright = brightness(terrain.pixels[loc]);
      if (bright > 100) {
        pixels[loc] = color(255 - z, r, 0);
      }else {
       pixels[loc] = color(0, r, 255 + z);  
      }
    
    }
    
  }
  
  updatePixels();
   
}

 void run() {
  
   display(); 
  
  }
  
}
