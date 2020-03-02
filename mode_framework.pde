
void game() {
  background(0,0,255);
  
  int i = 0;
  while(i < 45){
    Brick b = myBricks.get(i);
    b.show();
    b.act();
    i++;
  }
  ball();
  paddle();
  
  textSize(30);
  text("Lives: " + lives, 100, 300);
  
  text("Score: " + points, 100, 350);
   
  text("High Score: " + HS, 100, 400);
 
}

void gameClicks() {
 
}

void ball() {
  fill(c);
  circle(bx, by, thickness);
  //move the ball
  bx = bx + bvx;
  by = by + bvy;
  if (bx + thickness/2 < 0 || bx + thickness/2 > width) { //HALP
    bvx = -bvx;
  }
  if (by + thickness/2 < 0 || by + thickness/2 > height) {
    bvy = -bvy;
  }
  
  if (dist(bx, by, px, py) <= thickness2/2 + thickness/2){
  bvx = (bx - px)/10;
  bvy = (by - py)/10;
}

   if (by + 10 >= height){ 
     bx = width/2;
    by = height/2;
    bvx = 0;
    bvy = 3;
    px = width/2;
    py = height + 10;
    lives--;
   }
   if (lives == 0){ 
    mode = GAMEOVER;
   
  }  
  
}

void paddle() {
  fill(c2);
  circle(px, py, thickness2);
  if (rightKey) px = px + 5;
  if (leftKey) px = px - 5;
  if (px + thickness2/2 >= width){
    px = width - thickness2/2;
  }
  if (px - thickness2/2 <= 0){
    px = thickness2/2;
  }

}
