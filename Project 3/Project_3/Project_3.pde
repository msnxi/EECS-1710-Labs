int gameScreen = 0;

Menu menu; 
Game game;

void setup () {
 
  size (671, 1000); 
  menu = new Menu ();
  game = new Game();
 
}

void draw() {
  
  //To determine when to use the code of the main menu, the game itself and the game over screen 
  if (gameScreen == 0) {
    
   menu.run();
  
 }else if (gameScreen == 1) {
   
   game.run();   
    
 }
 
}
