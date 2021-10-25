class Ant{
 
  //Variable
  PVector location;
  PVector velocity;
  
  float triggerDistance1;
  float triggerDistance2;
  float size;
  
  ArrayList<PVector> history;
  
  PImage blood;
  
  
  //Constructor
  Ant() {
    
    location = new PVector(width/2, height/2);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    
    triggerDistance1 = 100; //distance from bee
    triggerDistance2 = 10;  //distance from food
    size = 2;
    
    history = new ArrayList<PVector>();
    
    blood = loadImage("blood.png"); //https://www.freeiconspng.com/img/44463
    blood.resize(blood.width/18, blood.height/18);
    imageMode(CENTER);
    
    //spawns 2 food pieces
    food = new ArrayList<Food>();
    for(int i = 0; i < 2; i++)  {
      
      food.add(new Food());
   
 }
  
}    
    

  //Methods
  void display() {
    
    stroke(0);
    strokeWeight(3);
    fill(0);
    square(location.x, location.y, size);
    
    //this creates a shape behind the square, and adds the effect of squishing
    for (int i = 0; i < history.size(); i++){
     
      PVector current = history.get(i);
      fill(0, 0, 0, i * 10); 
      square(current.x, current.y, size);
      
    }
       
  }
  
  void update() {
    
    location.add(velocity);  
    
    PVector v = new PVector(location.x, location.y);
    history.add(v);
   
    if(history.size() > 10) {
      
      history.remove(0);
      
    }
     
     //keeps the ants in the screen
     if ((location.x > width) || (location.x < 0)){
    
       velocity.x = velocity.x * -1;
       
   }
    
    if ((location.y > height) || (location.y < 0)){
     
      velocity.y = velocity.y * -1;
      
    }
    
    //hitDetect for the bee, causes ants to run away
    if(location.dist(bee.pos) < triggerDistance1) {
      
      velocity.x = velocity.x * -1;
      velocity.y = velocity.y * -1;
      
    }
    
    //hitDetect for the food, cause the ant to grow and spawns in new food piece after eaten
    for(int i = food.size() - 1; i >= 0; i--)  { 
      
      Food foods = food.get(i);
      
      if(location.dist(foods.pos) < triggerDistance2) {
      
     size += 5;
     food.remove(i);
     food.add(new Food()); 
      
     } else {
      
       foods.display(); 
     
   }
   
 }
    
    //ants die if they reach a certain size
    if(size >= 8) {
     
     fill(0);
     image(blood, location.x, location.y);
     velocity.x = 0;
     velocity.y = 0;
     
    }
    
  }
  
  void run() {
   
    update();
    display(); 
    
  }
    
}
  
