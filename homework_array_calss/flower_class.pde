class flowers { // creating the class
  int flowerXpos;
  int flowerYpos;
  float radius;
  int petalnum;
  float petalColor;
  float speedX;
  float speedY;
  float ballX;
  float ballY;

  flowers(int tempXpos, int tempYpos, float tempradius, int tempPetalnum, float tempPetalColor) {
    flowerXpos = tempXpos;
    flowerYpos = tempYpos;
    radius = tempradius;
    petalnum = tempPetalnum;
    petalColor = tempPetalColor;
  }

  void display() // making display function
  {
    fill(random(100));// maing the color of the petals random so they can be distinguished from each other.
    for (float i=0; i<PI*2; i+=2*PI/petalnum) {
      ballX=flowerXpos + radius*cos(i);
      ballY=flowerYpos + radius*sin(i);
      ellipse(ballX, ballY, radius, radius);
    }
    fill(200, 0, 0);
    ellipse(flowerXpos, flowerYpos, radius*1.2, radius*1.2);
  }
}
