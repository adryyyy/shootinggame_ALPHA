
//***********setup_window**********//
  int gameScreen = 0;
  int Score = 0;
  float blockX = 300;
  float blockY = 300;
  int blockDim = 50;
void setup() {
  size(640, 480);
  noStroke();
}
//Current window
void draw() {
    if (gameScreen == 0) { 
    initScreen();
    } else if (gameScreen == 1) { 
    gameScreen();
    } else if (gameScreen == 2) { 
    gameOverScreen();
    }
  }
  //initial screen with a press to start
void initScreen() {
      background(#FF00FF);
      textAlign(CENTER);
      fill(#00FF4D);
      textSize(width/15);
      text("Shooting Game by Adry", width/2, height/2);
      fill(#00FFCC);
      text("CLICK TO START" , width/2 , height/2+80);
      }
      //the game screen
void gameScreen() {
      background(#00ff00);
      Objects();
    fill(255, 255, 255, 0);
    if(mousePressed){;
    stroke(#FF0000);
     strokeWeight(2);
     stroke(0);
     } else {
    stroke(0);
    }
    ellipse(mouseX,mouseY,50,50);
    line(mouseX-35,mouseY,mouseX+35,mouseY);
    line(mouseX,mouseY-35,mouseX,mouseY+35);
    }
    //gameover screen
void gameOverScreen() {
  background(#FF00FF);
      textAlign(CENTER);
      fill(#00FF4D);
      textSize(width/15);
      text("Game Over", width/2, height/2);
      text("Score:" , width/2 , height/2+80);
      text(Score , width/2+80 , height/2+80);
      fill(#00FFCC);
      text("CLICK TO RESTART" , width/2 , height/2+160);
    }
    //***************INPUTS***********//
    public void mousePressed() {
  // if we are on the initial screen when clicked, start the game 
  if (gameScreen==0) { 
    startGame();
  }
  if (gameScreen==2) {
    restart();
  }
  if (mouseX==blockX) {
    if (mouseY==blockY) {int score = Score+1;}
  }
}
void startGame() {
  gameScreen=1;
}
void gameOver() {
  gameScreen=2;
}

void restart() {
  Score = 0;
  gameScreen = 1;
}
//*****************objects*******************//
void Objects() { 
  fill(#ff0000);
  noStroke();
  ellipse(blockX , blockY , blockDim , blockDim);
  }
