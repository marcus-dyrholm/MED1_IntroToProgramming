class lane{
 int tempLaneX, tempLaneY, tempLaneW, tempLaneH;
 lane(int laneX, int laneY, int laneW, int laneH){
   tempLaneX=laneX;
   tempLaneY=laneY;
   tempLaneW=laneW;
   tempLaneH=laneH;
 }
 void displayLane(){
   fill(0);
   stroke(255);
   rect(tempLaneX, tempLaneY, tempLaneW, tempLaneH);
}
}
