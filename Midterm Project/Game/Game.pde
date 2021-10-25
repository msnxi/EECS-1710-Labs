//WAIT FOR THE BALL TO GO DOWN BEFORE YOU SHOOT

int gameScreen = 0; // This will keep track of what screen to show

ArrayList<Snowball> sBall;

Menu menu;
Start start; 
Goal goal;
Cannon cannon; 
End end; 


void setup () {
 
  size (800, 600); 
  menu = new Menu ();
  start = new Start();
  goal = new Goal();
  end = new End();

}

void draw() {
  
  //To determine when to use the code of the main menu, the game itself and the game over screen 
  if (gameScreen == 0) {
    
    menu.run(); 
  
 }else if (gameScreen == 1) {

    start.strt();
    goal.run();
   
 } else if (gameScreen == 2) {
   
    end.display();
 
 } 
 
}
