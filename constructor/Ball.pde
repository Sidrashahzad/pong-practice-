/*known ERROR
Night Mode : Ball color ;*/
class Ball {
  float x, y, diameter;
  color colour;
  float xspeed, yspeed,XDirection, YDirection;
  ///
  //constructor
  Ball() {
    //constructor Is ..... hard coded single variable object
    //local vairables deleted at end of constructor
    int startX = displayWidth *1/2;
    int startY = displayHeight*1/2;
    int referentMeasure = (displayWidth<displayHeight)?displayWidth:displayHeight;
    //
    //object variables
    x = startX;
    y = startY;
    diameter = referentMeasure*1/20;
    colour = color( random(0, 225), random(255), random(255) );
    // xspeed=yspeed;
    xspeed =1;
    yspeed =1;
    XDirection = -1;
    YDirection = -1;
  }// end constructor
  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    fill(0);
    step();
  }
  void step() {
    bounce();
    x += xspeed;
    y += yspeed;
   
  }//end step
 
   void bounce() {
    if (x < 0+diameter*1/2 || x > displayWidth(diameter*1/2))  xspeed *=  XDirection;
    
    if (y < 0+diameter*1/2 || y > displayHeight (diameter*1/2)) yspeed *= YDirection;   
 }//bounce     
}   
