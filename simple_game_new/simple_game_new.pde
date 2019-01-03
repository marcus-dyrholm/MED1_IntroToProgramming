//calling player class
player myPlayer;
int playerX=400;
int playerY=460;
int playerW=40;
int playerH=40;

//making a lane array
lane [] laneRow= new lane [4];
int n_lanes = laneRow.length;
int l_space=100;
int laneX=0;
int laneY=20;
int laneW=800;
int laneH=40;

//movement booleans
boolean keyUp=false;
boolean keyRight=false;
boolean keyLeft=false;
boolean keyDown=false;
boolean dead=false;
boolean Restart=false;
boolean win=false;

//deathzones
int deathzoneX=800;
int deathzoneY=40;
int deathzoneW=300;
int deathzoneH=40;
int speed=20;
//deathzone 2
int deathzoneX2=-600;
int deathzoneY2=140;
int deathzoneW2=550;
int speed2=15;
//deathzone 3
int deathzoneX3=width+250;
int deathzoneY3=240;
int deathzoneW3=250;
int speed3=23;
//deathzone 4
int deathzoneX4=-200;
int deathzoneY4=340;
int deathzoneW4=200;
int speed4=15;



void setup() {
  size(800, 500);
  //initializing the player class
  myPlayer= new player(playerX, playerY, playerW, playerH);

  // initializing the lane array
  for (int i = 0; i<n_lanes; i+=1) {
    laneRow[i] = new lane (laneX, i*l_space+laneH, laneW, laneH);
  }
}


void draw() {
  background(0, 255, 0);
  
  //drawing the lane array
  for (int i=0; i<n_lanes; i+=1) {
    laneRow[i].displayLane();
  }

  // calling functions from the player class
  myPlayer.display(); 

  //The movement function is dependent on dead = false, so that the player cannot win the game after they have died. Without this function the game would be winable and could display the win screen on top of the death screen.
  if (dead==false) {
    myPlayer.move();
  }

  myPlayer.dead();
  myPlayer.win();

  if (Restart==true) {
    myPlayer.restart();
  }

  //deathzones
  noStroke();
  rect(deathzoneX, deathzoneY, deathzoneW, deathzoneH);
  deathzoneX-=speed;
  if (deathzoneX<=-width+deathzoneW) {
    deathzoneX=width;
  }
  rect(deathzoneX2, deathzoneY2, deathzoneW2, deathzoneH);
  deathzoneX2+=speed2;
  if (deathzoneX2>=width+deathzoneW2) {
    deathzoneX2=-600;
  }
  rect(deathzoneX3, deathzoneY3, deathzoneW3, deathzoneH);
  deathzoneX3-=speed3;
  if (deathzoneX3<=-width+deathzoneW3) {
    deathzoneX3=width+250;
  }
  rect(deathzoneX4, deathzoneY4, deathzoneW4, deathzoneH);
  deathzoneX4+=speed4;
  if (deathzoneX4>=width+deathzoneW4) {
    deathzoneX4=-200;
  }
  
  //displaying the death screen
  if (dead==true) {
    fill(0, 0, 255);
    rect(0, 0, width, height);
    fill(0);
    textAlign(CENTER, CENTER);
    text("GAME OVER! PRESS 'R' TO RESTART", width/2, height/2);
  }
  //displaying the win screen
  if (win==true) {
    fill(255, 0, 0);
    rect(0, 0, width, height);
    fill(0);
    textAlign(CENTER, CENTER);
    text("YOU HAVE WON! PRESS 'R' TO RESTART", width/2, height/2);
  }
}

//movement. Here the program checks to see if any keys have been pressed or released and
//changes the movement booleans accordingly.
void keyPressed() {
  if (keyCode==RIGHT) {
    keyRight= true;
  }
  if (keyCode==LEFT) {
    keyLeft= true;
  }
  if (keyCode==UP) {
    keyUp=true;
  }
  if (keyCode==DOWN) {
    keyDown=true;
  }
  if (keyCode=='R') {
    dead=false;
    Restart=true;
    win=false;
  }
}
void keyReleased () {
  if (keyCode==RIGHT) {
    keyRight= false;
  }
  if (keyCode==LEFT) {
    keyLeft= false;
  }
  if (keyCode==UP) {
    keyUp=false;
  }
  if (keyCode==DOWN) {
    keyDown=false;
  }
  if (keyCode=='R') {
    Restart=false;
  }
}
