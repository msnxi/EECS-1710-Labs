class Cannon {

  PVector position;
  
  float rot = 0;
  float rotDelta = 0.5;
  float triggerDistance = 50;
  
  
  Cannon(float x, float y) {
    
    x = 50;
    y = 550;
    position = new PVector(x, y);
    sBall = new ArrayList<Snowball>();
    
  }
  
  void update() {
    
    //For the balls to be released the same angle as the cannon and for the balls to appear and disappear at the correct moment
    rot += rotDelta;    
    
    if (rot < 0 || rot > 60) rotDelta *= -1;
    
    for (int i = sBall.size()-1; i>=0; i--) {
      
      Snowball sBalls = sBall.get(i);
 
       if (sBalls.alive) {
           
         sBalls.run();
      
     } else {
          
          goal.strike += 1;
          sBall.remove(i);
          
      }
      
      //hitDetect
       if (sBalls.alive && sBalls.position.dist(goal.pos1) < triggerDistance) { 
        
         goal.score += 1; //Increasing the score
         sBall.remove(i); 
      
      }
    
    }
    
  }
  
  
  void fire() {
    
    //Adding new balls to the arraylist
    sBall.add(new Snowball(position.x, position.y, rot));
  
  }
  
  void draw() {
    
    pushMatrix(); 
    translate(position.x, position.y);
    stroke(0);
    fill(137, 137, 137);
    rotate(radians(rot));
    rectMode(CENTER);
    rect(0, 0, 100, 150);
    popMatrix();
  
  }
  
  void run() {
    
    update();
    draw();
  
  }

}
