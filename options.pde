color c;
int colour = 2;
color blue = #FFF56C;
color green = #AEAD0D;
color gray = #26B9C8;
color beige = #0457A0;
color lightBlue = #FF808B;
float sliderX = 225;
float thickness = 50;
float red = 255;
int w1, h1, h2, w2, h3, h4, w, h, s;
void option(){
  background(255);
  
 fill(0);
 circle(730, 50, 80);
 fill(255);
 textSize(20);
 text("BACK", 750, 48);
  
  fill(0);
  textSize(30);
  text("SELECT YOUR CHARACTER", width/2, 130);
//TRIANGLE==========================================================  
  //Left
  fill(0);
  triangle(w1, 225, 245, h1, 245, h2);
  
  noStroke();
  fill(255, 255, 255, 0);
  rect(185, 350, 30, 60);
  
    if (mouseX > 210 && mouseX < 245 && mouseY > 200 && mouseY < 250) {
      w1 = 205;
      h1 = 195;
      h2 = 255;
    } else{
      w1 = 210;
      h1 = 200;
      h2 = 250;
    }
  
  //Right
  fill(0);
  triangle(560, h3, w2, 225, 560, h4);
  
  fill(255, 255, 255, 0);
  rect(615, 350, 30, 60);
  
   if (mouseX > 560 && mouseX < 595  && mouseY > 200 && mouseY < 250) {
      w2 = 600;
      h3 = 195;
      h4 = 255;
    } else{
      w2 = 595;
      h3 = 200;
      h4 = 250;
    }  
  
   // CENTRE  CIRCLE
  fill(c);
  circle(width/2, 225, thickness);
  
  
  //PLAY BUTTON===========================================================
  fill(0);
  rect(400, 700, w, h);
  
  
  fill(255);
  textSize(s);
  text("PLAY!", 400, 690);
  
   if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 750) {
      w = 220;
      h = 110;
  } else {
    w = 200;
    h = 100;
  }
   if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 750) {
      s = 55;
  } else {
    s = 50;
  }
  
  //SLIDER--------------------------------------------------------------
 stroke(0);
 strokeWeight(3);
 fill(255);
 rect(400, 350, 400, 70);
 stroke(0);
 strokeWeight(2);
 line(225, 350, 575, 350);
 fill(255);
 circle(sliderX, 350, 30);
 
 if (mousePressed){
   if(dist(sliderX, 350, mouseX, mouseY) < 30){
     sliderX = mouseX;
     
     if (sliderX < 225){
     sliderX = 225;
     }
      if (sliderX > 575){
     sliderX = 575;
      }
   }
   
  
 }
 
 thickness = map(sliderX, 225, 575, 50, 150);
}



void optionClicks() {
     if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 750) {
    mode = GAME;
  }
  
    if (dist(730, 50, mouseX, mouseY) <= 40){
    mode = INTRO;
    }
    if (mouseX > 582.5 && mouseX < 630  && mouseY > 320 && mouseY < 380) {
      colour++;
    }
    
    if (mouseX > 107.5 && mouseX < 200 && mouseY > 320 && mouseY < 380) {
       colour--;
     }
     
    if (colour <= 0){
      colour = 0;
    c = blue;
    }
    
    if (colour == 1){
     c = green;
    }
    
    if (colour == 2){
      c = gray;
    }
    
    if (colour == 3){
    c = beige;
    }
    
    if (colour >= 4){
      colour = 4;
    c = lightBlue;
  }
 
}
