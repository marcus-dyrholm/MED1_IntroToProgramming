flowers flower1; //calling one flower
flowers flower2; // calling second flower
int r=60; //positions and avoiding magic numbers
float ballX;
float ballY;
float speed=2;
int flower1petalnum=6;
int flower2petalnum=4;



void setup() {
  size(600, 400);

  flower1 = new flowers(width/2, height/2, r, flower1petalnum, #FF23B4, speed); // calling the class
  flower2 = new flowers(width/2, height/2, r, flower2petalnum, #00FF00, -speed); //calling second class
}

void draw() { // calling the functions
  background(#43AF76);
  flower1.display();
  flower1.movement();
  flower1.Bounce();
  flower2.display();
  flower2.movement();
  flower2.Bounce();
}  
