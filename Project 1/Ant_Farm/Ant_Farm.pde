//CODE TAKES A FEW SECONDS TO START

Bee bee;
BG bg;

int antnums = 50;
Ant[] ant = new Ant[antnums];

ArrayList<Food> food;

void setup() {
 
 size(800, 600, P3D);
 
 bee = new Bee();
 bg = new BG();

 for (int i = 0; i < antnums; i++) {
   
   ant[i] = new Ant();
   
 }
 
}

void draw() {
  
 bg.display();
 bee.run();
     
}
