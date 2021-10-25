class Snowball {
  
  PVector position;
  
  float rot;
  float velocityX = 35;
  float velocityY = 35; 
  float strike;
  
  boolean alive = true;
  
  int spawnTime;
  
  final float GRAVITY = 0.98;
  final float FRICTION = 0.75;
  
  Snowball(float x, float y, float _rot) {
    
    position = new PVector(x, y);
    rot = _rot;
    strike = 0;
    
  }
   
  void update() {
   
    //Used from the GIThub for releasing the ball at the correct angle
    position.x += velocityX * sin(radians(rot));
    position.y -= (velocityY -= GRAVITY)* cos(radians(rot));
    
    if (position.x >= width || position.x <= 0) {
      
      velocityX *= -1;
      
    }
    
    if (position.y <= 0) {
      
       velocityY *= -1; 
    }
    
    //This will clean up the balls after they have left the screen
    if (alive && position.y > width ) alive = false;  
  
  }
  
  void draw() {
    
    stroke(0);
    fill(255);
    ellipse(position.x, position.y, 70, 70);
    
  }
  
  void run() {
    
    update();
    draw();
    
  }
 
}
