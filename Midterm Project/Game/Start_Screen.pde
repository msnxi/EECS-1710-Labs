class Menu {
 
  //Variables 
  PImage tundra; 
  PImage intro; 
  PImage sBar;
  
  int flakes = 500;
  int opacity;
  
  Snow[] snow = new Snow[flakes];
  
  //Constructor 
  Menu() {
   
   tundra = loadImage("main_menu.png"); //https://www.reddit.com/r/PixelArt/comments/9llrwq/oc_octobit_day_5_6color_tundra/
   tundra.resize(width, height);
   imageMode(CENTER);
   
   intro = loadImage("intro.png"); //https://favpng.com/png_view/logo-brand-winter-olympic-games-font-png/dLSwKBZw
   intro.resize(intro.width / 3 , intro.height / 3);
   imageMode(CENTER);
   
   sBar = loadImage("spacebar.png"); //http://pixelartmaker.com/art/eb766b2f71c2ee4
    imageMode(CENTER);
    
    for(int i = 0; i < flakes; i++) {
      
      snow[i] = new Snow(random(50, 750), 0); 
          
   }
   
  }
   
   //Methods
   void bg(){
    
     image(tundra, width/2, height/2);
     
   }
    
   void display(){
    
    image(intro, width/2, 125);
    
    image(sBar, width/ 2, 450);
   
    }
    
    void run () {
     
      gameScreen = 0;   
      bg ();
      
     for(int i= 0; i < flakes; i++) {
       
       snow[i].run();
       
    }
  
     display();  
     
  }
  
}
  
  
  
  
  
  
  
  
