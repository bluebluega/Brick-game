class Brick {

  //1. instance variables
  float x, y;
  int hit, o;

  //2. constructor

  Brick() {
    x = gridx;
    y = gridy;
    hit = 1;
    o = 255;
  }
  //3. behaviour functions

  void act() {
    if (hit > 0 && dist(x, y, bx, by) < 35) {
      hit = hit - 1;
      bvx = (bx - x)/5;
      bvy = (by - y)/5;
    }
   
  }

  void show() {
    if (hit > 0) {
      fill(255, 255, 255, o); 
      ellipse(x, y, 50, 50);
    }
  }
}
