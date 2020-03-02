color c;
color c2;
int colour = 2;
int colour2 = 2;
color blue = #FFF56C;
color green = #AEAD0D;
color gray = #26B9C8;
color beige = #0457A0;
color lightBlue = #FF808B;
float sliderX = 225;
float sliderX2 = 225;
float thickness = 50;
float thickness2 = 50;
float red = 255;
int w1, h1, h2, w2, h3, h4, w, h, s, h5, h6, h7, h8, w3, w4;
void option(){
  background(255);
 
  
//BALL CONTROL SYSTEM
     fill(0);
     circle(730, 50, 80);
     fill(255);
     textSize(20);
     text("BACK", 750, 48);
  
      fill(0);
      textSize(30);
      text("SELECT YOUR PLAYER", width/2, 40);
      text("PADDLE SIZE", width/2, 320);
    //TRIANGLE==========================================================  
      //Left
      fill(0);
      triangle(w1, 125, 245, h1, 245, h2);
      
      noStroke();
      fill(255, 255, 255, 0);
      rect(230, 125, 35, 50);
      
        if (mouseX > 212.5 && mouseX < 247.5 && mouseY > 100 && mouseY < 150) {
          w1 = 205;
          h1 = 95;
          h2 = 155;
        } else{
          w1 = 210;
          h1 = 100;
          h2 = 150;
        }
      
    //Right================================================================
      fill(0);
      triangle(560, h3, w2, 125, 560, h4);
     
      fill(255, 255, 255, 0);
      rect(575, 125, 35, 50);
      
       if (mouseX > 557.5 && mouseX < 592.5  && mouseY > 100 && mouseY < 150) {
          w2 = 600;
          h3 = 95;
          h4 = 155;
        } else{
          w2 = 595;
          h3 = 100;
          h4 = 150;
        }  
      
    //CENTRE  CIRCLE======================================================
      fill(c);
      circle(width/2, 125, thickness);
      
    //BALL-------------------------------------------------------------
     stroke(0);
     strokeWeight(3);
     fill(255);
     rect(400, 250, 400, 70);
     stroke(0);
     strokeWeight(2);
     line(225, 250, 575, 250);
     fill(255);
     circle(sliderX, 250, 30);
     
     if (mousePressed){
       if(dist(sliderX, 250, mouseX, mouseY) < 30){
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
 
 
//PADDLE CONTROL SYSTEM==============================================================
      
    //TRIANGLE
      //left
        fill(0);
        triangle(w3, 400, 245, h5, 245, h6);
        
        noStroke();
        fill(255, 255, 255, 0);
        rect(230, 400, 35, 50);
        
          if (mouseX > 212.5 && mouseX < 247.5 && mouseY > 375 && mouseY < 425) {
            w3 = 205;
            h5 = 370;
            h6 = 425;
          } else{
            w3 = 210;
            h5 = 375;
            h6 = 420;
          }
     
      //Right
        fill(43);
        triangle(560, h7, w4, 400, 560, h8);
        
        fill(255, 255, 255, 0);
        rect(575, 400, 35, 50);
        
         if (mouseX > 557.5 && mouseX < 592.5  && mouseY > 375 && mouseY < 425) {
            w4 = 600;
            h7 = 430;
            h8 = 370;
          } else{
            w4 = 595;
            h7 = 425;
            h8 = 375;
          }  
      
       // CENTRE  CIRCLE
      fill(c2);
      circle(width/2, 400, thickness2);
      
      fill(255);
      stroke(0);
     rect(400, 525, 400, 70);
     strokeWeight(2);
     line(225, 525, 575, 525);
     fill(255);
     circle(sliderX2, 525, 30);
     
     if (mousePressed){
       if(dist(sliderX2, 525, mouseX, mouseY) < 30){
         sliderX2 = mouseX;
         
         if (sliderX2 < 225){
         sliderX2 = 225;
         }
          if (sliderX2 > 575){
         sliderX2 = 575;
          }
       }
     }
     
     thickness2 = map(sliderX2, 225, 575, 50, 150);
 
  //PLAY BUTTON===========================================================
     fill(0);
     circle(730, 525, 80);
     fill(255);
     textSize(20);
     text("PLAY!", 732, 530);
}

  




void optionClicks() {
     if (dist(730, 525, mouseX, mouseY) <= 40) {
    mode = GAME;
  }
  
    if (dist(730, 50, mouseX, mouseY) <= 40){
    mode = INTRO;
    }
    if (mouseX > 557.5 && mouseX < 592.5  && mouseY > 100 && mouseY < 150) {
      colour++;
    }
    
    if (mouseX > 212.5 && mouseX < 247.5 && mouseY > 100 && mouseY < 150) {
       colour--;
     }
     
     if (mouseX > 212.5 && mouseX < 247.5 && mouseY > 375 && mouseY < 425) {
      colour2++;
    }
    
    if (mouseX > 557.5 && mouseX < 592.5  && mouseY > 375 && mouseY < 425) {
       colour2--;
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
  
//PADDLE CONTROL===========================================
  if (colour2 <= 0){
      colour2 = 0;
    c2 = blue;
    }
    
    if (colour2 == 1){
     c2 = green;
    }
    
    if (colour2 == 2){
      c2 = gray;
    }
    
    if (colour2 == 3){
    c2 = beige;
    }
    
    if (colour2 >= 4){
      colour2 = 4;
    c2 = lightBlue;
  }
 
}
