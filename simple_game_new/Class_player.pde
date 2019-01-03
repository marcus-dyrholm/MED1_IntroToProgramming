public class player {
  float playerx, playery, playerw, playerh;
  player(float x, float y, float w, float h) {
    playerx=x;
    playery=y;
    playerw=w;
    playerh=h;
  }
  void display() {
    noStroke();
    fill(255, 0, 0);
    rect(playerx, playery, playerw, playerh);
  }

  // here is where the movement booleans are used to change the direction of the player.
  void move() {
    if (keyUp==true) {
      playery-=2;
    }
    if (keyDown==true) {
      playery+=2;
    }
    if (keyRight==true) {
      playerx+=2;
    }
    if (keyLeft==true) {
      playerx-=2;
    }

  }
  //collision detection
  void dead() {
    if (deathzoneX<=playerx+playerW && deathzoneX+deathzoneW>=playerx && deathzoneY<=playery+playerH && deathzoneY+deathzoneH>=playery) {
      dead=true;
    }
    if (deathzoneX2<=playerx+playerW && deathzoneX2+deathzoneW2>=playerx && deathzoneY2<=playery+playerH && deathzoneY2+deathzoneH>=playery) {
      dead=true;
    }
    if (deathzoneX3<=playerx+playerW && deathzoneX3+deathzoneW3>=playerx && deathzoneY3<=playery+playerH && deathzoneY3+deathzoneH>=playery) {
      dead=true;
    }
    if (deathzoneX4<=playerx+playerW && deathzoneX4+deathzoneW4>=playerx && deathzoneY4<=playery+playerH && deathzoneY4+deathzoneH>=playery) {
      dead=true;
    }
  }
  // changing the win boolean to check if the player has won.
  void win(){
   if(playery<=0){
    win=true; 
   }
  }
  //resetting the player after restart
     void restart(){ 
      playerx=400;
      playery=460;
   }
}
