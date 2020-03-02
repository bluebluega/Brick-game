class Brick {

  //1. instance variables
  float x, y;
  int hit;

  //2. constructor

  Brick() {
    x = gridx;
    y = gridy;
    hit = 3;
  }
  //3. behaviour functions

  void act() {
    if (hit > 0 && dist(x, y, bx, by) < 25 + thickness/2) {
      hit = hit - 1;
      bvx = (bx - x)/10;
      bvy = (by - y)/10;
    }
    
    //if (hit == 3){
    //  points = points + 3;
    //}
   
  }

  void show() {
    if (hit == 3) { //HALP
      
      fill(105,210,231); 
      ellipse(x, y, 50, 50);
      points++;
      
    } 
    
    if (hit == 2) {
      
      fill(224,228,204); 
      ellipse(x, y, 50, 50);
     
      
    }
    if (hit == 1) {
      fill(250,105,0); 
      ellipse(x, y, 50, 50);
    
  }  //else if (hit == -1){
  //    hit = 3;
  //}
}
}
