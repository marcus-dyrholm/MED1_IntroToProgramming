class flowers { // creating the class
  int Xpos;
  int Ypos;
  float radius;
  int petalnum;
  int petalColor;
  float speedX;
  float speedY;

  flowers(int tempXpos, int tempYpos, float tempradius, int tempPetalnum, int tempPetalColor, float tempspeed) {
    Xpos = tempXpos;
    Ypos = tempYpos;
    radius = tempradius;
    petalnum = tempPetalnum;
    petalColor = tempPetalColor;
    speedX = tempspeed;
    speedY = tempspeed;
  }

  void display() // making display function
  {
    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/petalnum) {
      ballX=Xpos + radius*cos(i);
      ballY=Ypos + radius*sin(i);
      ellipse(ballX, ballY, radius, radius);
    }
    fill(200, 0, 0);
    ellipse(Xpos, Ypos, radius*1.2, radius*1.2);
  }
  void movement() { //making the movement function
    Xpos = Xpos+int(speedX);
    Ypos = Ypos+int(speedY);
  }
  void Bounce() { // making the flowers bounce
    if (Xpos+radius>width || Xpos-radius<0) {
      speedX=speedX*-1;
    }
    if (Ypos+radius>height || Ypos-radius<0) {
      speedY=speedY*-1;
    }
  }
}
