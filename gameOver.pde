void gameover() {
  background(255,0,0);
  
  rect(400, 300, 50, 50);
   fill(255);
   
   textSize(30);
  
  text("Score: " + score, 100, 350);
   
  text("High Score: " + HS, 100, 400);
}

void gameOverClicks() {
  
  if (mouseX >= 375 && mouseX <= 425 && mouseY <= 325 && mouseY >= 275){
    setup();
   mode = INTRO;
   }
  
}
