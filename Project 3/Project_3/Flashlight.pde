class Menu {
 
  //Variables 
  PImage menuimg;  
  PImage sBar;
  
  //Constructor 
  Menu() {
   
   menuimg = loadImage("main_menu.png"); //https://www.reddit.com/r/PixelArt/comments/9llrwq/oc_octobit_day_5_6color_tundra/
   menuimg.resize(width, height);
   imageMode(CENTER);
   
   sBar = loadImage("spacebar.png"); //http://pixelartmaker.com/art/eb766b2f71c2ee4
   imageMode(CENTER);
 
          
   }
   
   
   //Methods
    
   void display(){
    
    loadPixels();
    menuimg.loadPixels();
  
  for (int x = 0; x < menuimg.width; x++) {
    for (int y = 0; y < menuimg.height; y++) {
     
      //Flashlight effect for the main menu
      int loc = x + y * menuimg.width;
      float r = red(menuimg.pixels[loc]);
      float g = green(menuimg.pixels[loc]); 
      float b = blue(menuimg.pixels[loc]);
      float d = dist(mouseX, mouseY, x, y); 
      float factor = map(d, 0, 200, 2, 0); 
      pixels[loc] = color(r*factor, g*factor, b*factor);
    }
    
  }
  
  updatePixels();
   
   image(sBar, width/ 2, 450); 
  
}
  
  void run() {
     
      gameScreen = 0;
      display();  
  
 }
}
  
