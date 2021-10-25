class End{
 
  //Variables
  PImage winner;
  PImage gameOver;
  
  //Constructor
  End() {
   
   winner = loadImage("winner.jpg"); //https://www.dreamstime.com/pixel-art-bit-you-win-text-one-big-winner-golden-cup-white-background-isolated-vector-illustration-black-image184636815
   winner.resize(width, height);
   imageMode(CENTER);
   
   gameOver = loadImage("game_over.jpg"); //https://www.pond5.com/search?kw=8-bit-game-over&media=footage
   gameOver.resize(width, height);
   imageMode(CENTER);
   
  }
  
  //Methods
  void display() {
   
    gameScreen = 2; 
    
    //The game over screen for finishing the game
    if (goal.score >= 10)   {
      
      image(winner, width/2, height/2);
   
      stroke(0); 
      strokeWeight(50);
      fill(255); 
      textSize(55);
      text("PRESS SPACE TO PLAY AGAIN",  15, 50);
      
    //The game over screen for not completing the game 
    } else if (goal.strike >= 3) {
        
        image(gameOver, width/2, height/2);
     
        stroke(255, 0, 0); 
        strokeWeight(50);
        fill(255); 
        textSize(55);
        text("PRESS SPACE TO PLAY AGAIN",  15, 50);
         
   }
 
 }
 
}
