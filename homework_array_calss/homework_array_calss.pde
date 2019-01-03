//calling the flower class
flowers Flower;
int Flowerpetalnum=6;
float petalcolor;

//making the array
int num = 300;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;

void setup() {
  frameRate(100);
  size(500, 500);
  //using noStroke() greatly improves the overall performance of the program when doing many calculations such as here
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);

  //arranging the index positions
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;

  // Cycle between 0 and the number of elements. This method is called a ring buffer.
  indexPosition = (indexPosition + 1) % num;
  for (int i = 0; i < num; i++) {

    // This sets the array the array position so it reads.
    int pos = (indexPosition + i) % num;
    float radius = i/6;

    //ellipse(x[pos], y[pos], radius, radius);
    //replacing the ellipses with flowers 

    Flower=new flowers(x[pos], y[pos], radius, Flowerpetalnum, petalcolor);
    Flower.display();
  }
}
