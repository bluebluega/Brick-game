void intro() {
   background(0);
   rect(400, 300, 50, 50);
   fill(255);
}

void introClicks() {
   if (mouseX >= 375 && mouseX <= 425 && mouseY <= 325 && mouseY >= 275){
   mode = OPTION;
   }
}
