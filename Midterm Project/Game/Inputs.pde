 
 //To determine what the spacebar does depending on the screen its on
 void keyPressed(){
   
   if (key == ' '){
   
     if (gameScreen == 0) {
     
       start.strt();
   
   } else if (gameScreen == 1) {
      
       cannon.fire();
   
   } else if (gameScreen == 2){  
     
       menu.run();
       goal.score = 0;
       goal.strike = 0;
   
   }
   
  }
  
 }
