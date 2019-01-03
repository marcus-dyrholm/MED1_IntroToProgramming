float r = 10; // polar coordinates which are determined by (r,theta)
float theta = 0;
float noiseScale = noise(r)*10;


void setup() {
  size(800, 800);
  background(#FFFFFF);
  frameRate(300);
  
}

void draw() {
    float x = r * cos(theta); // the polar coordinates (r,theta) are converted into Cartesian (x,y) so it can be used in an ellipse
    float y = r * sin(theta);
    
    noStroke();
    
    fill(cos(theta*100+160), cos(theta)*100+160, 255);
    ellipse(x+width/2, y+height/2, noise(r)*30, noise(r)*30);
   
    r += 0.1; // incrementing the spacing from the center
    theta += 0.01; // incrementing the angle
}
