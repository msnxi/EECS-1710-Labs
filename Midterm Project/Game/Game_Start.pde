class Start {
  
  //Variables
    float gravity = 0.4;
    float gravityDelta = 0.01;
    float friction = 0.99;
    float floor;
    
    PImage mountain;
      
    
  //Constructors
   Start() {
     
     floor = height;
     cannon = new Cannon(width/2, height - 100);
  
     mountain = loadImage("mount.jpg"); //https://www.google.ca/search?q=winter+mountain+pixelated&tbm=isch&hl=en-GB&chips=q:winter+mountain+pixelated,online_chips:wallpaper:FFNoT60yt_M%3D&sa=X&ved=2ahUKEwjlp9Syu-TzAhVMg3IEHZwzBu8Q4lYoBHoECAEQGg&biw=1903&bih=937
     imageMode(CENTER);
   
   } 

  //Methods 
  
  void display() {
   
    gameScreen = 1; 
    
    image(mountain, width/2, height/2); 
    
    //To show user the amount of points and misses they have
    stroke(0);
    fill(0, 255, 0);
    textSize(45);
    text("SCORE : " + int(goal.score), 0, 50);
    
    stroke(0);
    fill(255, 0, 0);
    textSize(35);
    text("STRIKE : " + int(goal.strike), 200, 590);
    
    stroke(0);
    fill(0);
    textSize(35);
    text("GOAL : 10", 600, 50);
    
  }
  
  void strt() {
 
    display();
    cannon.run();
   
  }
  
}
