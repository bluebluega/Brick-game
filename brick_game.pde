//THINGS TO GET DONE
  //-refine option screen, high score, add points, colour


final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTION = 5;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

ArrayList<Brick> myBricks;

float bx, by, bvx, bvy;

float px, py;

boolean leftKey, rightKey;


//grid planning varibles

int gridx, gridy, lives, points, HS;


void setup() {
  size(800, 600);
  rectMode(CENTER);
  textAlign(CENTER);

  myBricks = new ArrayList<Brick>();
  gridx = 50;
  gridy = 50;
  int i = 0;
  while (i < 45) {
    myBricks.add(new Brick() );
    i = i + 1;
    gridx = gridx + 50;
    if (gridx > 750) {
      gridx = 50;
      gridy = gridy + 50;
    }
  }



  //ball
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;

  //paddle
  px = width/2;
  py = height + 10;
  
  lives = 3;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else if (mode == OPTION) {  
    option();
  } else {
    println("?");
  }
}
