class Ball {
  float x, y, diameter;
  color colour;
  float xspeed, yspeed;
  int xDirection, Ydirection;
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

    xspeed = displayWidth/displayWidth;//=1
    yspeed = displayHeight/ displayHeight;//=1
  }// end constructor
  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    fill(0);
  }
  void step() {
    x += xspeed;
    y += yspeed;
    xDirection = -1;
    ydirection = -1;
  }//end step
  void bounce() {
    if () {
      xspeed+=-1*xDirection;
    }
     if () {
       Yspeed+=-1*ydirection;
    }
  }//bounce
}
