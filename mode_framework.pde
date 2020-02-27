
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
  
  text("Score: " + score, 100, 350);
   
  text("High Score: " + HS, 100, 400);
 
}

void gameClicks() {
 
}

void ball() {
  ellipse(bx, by, 20, 20);
  //move the ball
  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 || bx > width) {
    bvx = -bvx;
  }
  if (by < 0 || by > height) {
    bvy = -bvy;
  }
  
  if (dist(bx, by, px, py) <= 60){
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
  ellipse(px, py, 100, 100);
  if (rightKey) px = px + 5;
  if (leftKey) px = px - 5;
  if (px + 50 >= 800){
    px = 750;
  }
  if (px - 50 <= 0){
    px = 50;
  }

}
