//known ERROR
//Night Mode : Ball color ;
class Ball {
  float x, y, diameter;
  color colour;
  float xspeed, yspeed, xspeedChange=1.0, yspeedChange=1.0;
  float gravity= 0.0;
  Boolean disappear=false, goalExplosion=false;
  float tableX,tableY,tableWidth,tableHeight, paddleX,paddleY,paddleWidth,paddleHeight;
    // static int count =25;
    //constructor
 Ball(){
    //constructor Is ..... hard coded single variable object
    //local vairables deleted at end of constructor
    int startX = displayWidth *1/2;
    int startY = displayHeight*1/2;
    int referentMeasure = (displayWidth<displayHeight)?displayWidth:displayHeight;
    //
    //object variables
    this.x = startX;
    this.y = startY;
    this.diameter = referentMeasure*1/20;
    this.colour = color( random(0, 225), random(255), random(255) );
    // xspeed=yspeed;
    this.xspeed = XDirection();
    this.yspeed = YDirection();
    //Error; Random will choose ZERO, not only -1 and 1
    this.xspeedChange = 2.0;
    this.yspeedChange = 2.0;
 }  // end  ball constructor
  // multible constructors
  Ball(float xparameter, float yparameter, float gravityparameter) {
    //Ball();//place holder
    this.x = xparameter;// \error trigger when the ball enters the goal are
    this.y = yparameter;// \error trigger when the ball enters the goal are
    this.colour = color( random(0, 225), random(255), random(255) );
    this.diameter = random(displayWidth*1/25);
    this.xspeed = random(-5, 5);
    this.yspeed = random(-5, 5);
    gravity = gravityparameter;
  }//end firework  Ball
  // must look like ball instance and make old ball instance disappear
  Ball(float xParameter, float yParameter, float diameterParameter, color colourParameter, float xSpeedParameter, float ySpeedParameter, float xspeedChangeParameter, float yspeedChangeParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.diameter= diameterParameter;
    this.colour= colourParameter;
    this.xspeed= xSpeedParameter;
    this.yspeed= ySpeedParameter;
    this.xspeedChange= xspeedChangeParameter;
    this.yspeedChange= yspeedChangeParameter;

    //
    //

    //
  }//end moved ball
  float XDirection() {
    float XDirection = int(random(-4, 4));//float
    while (XDirection == 0) {
      XDirection = int(random(-4, 4));//float variable must be populated first
    }
    return XDirection;
  }//end xdirection
  float YDirection() {
    float YDirection =  int(random(-4, 4));
    while (YDirection == 0) {
      YDirection = int(random(-4, 4));
    }
    return YDirection;
  }// end ydirection
  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);//Easter egg at bounce Diameter changes
    fill(0);
    step();
  }
 

  
  void goalExplosion(float xParameter, float yParameter, float gravitya){
for(int i=0; i < fireworks.length; i++){
fireworks[i] = new Ball(xParameter, yParameter, gravitya);
}

  }//end goal explosion
  void tableYUpdate(float tableYParameter, float tableHeightParameter, float tableWidthParameter, float tableXParameter, float myPaddleXParameter,  float yourPaddleXParameter, float myPaddleYParameter, float yourPaddleYParameter,float paddleWidthParameter,float myPaddleHeightParameter, float yourPaddleHeightParameter){
  tableY= tableYParameter;
  tableHeight = tableHeightParameter;
  tableWidth = tableXParameter+tableWidthParameter;
  paddleX=(x <tableWidth*1/2)? myPaddleXParameter:yourPaddleXParameter;
  paddleY=(x <tableWidth*1/2)? myPaddleYParameter:yourPaddleYParameter;
  paddleWidth=paddleWidthParameter;
  paddleHeight = ( x <tableWidth*1/2)?myPaddleHeightParameter:yourPaddleHeightParameter;
 
 //if ( x < paddleX+paddleWidth || x > yourPaddleXParameter)  xspeed *= -1;
   //if (y> -(diameter*1/2) <= myPaddleYParameter || y+diameter*1/2 >= yourPaddleYParameter ) yspeed *= -1;

}
void bounce(float myPaddleXParameter, float yourPaddleXParameter,float myPaddleYParameter, float yourPaddleYParameter ) {
 if ( x-(diameter*1/2)<myPaddleXParameter+paddleWidth  || x+(diameter*1/2) > yourPaddleXParameter)  xspeed *= -1;
 if ( y -(diameter*1/2)<myPaddleYParameter+paddleHeight|| y+(diameter*1/2) > yourPaddleYParameter) yspeed*= -1;
 }//bounce
   void step() {
   bounce(myPaddle.paddleX,yourPaddle.paddleX,myPaddle.paddleY,yourPaddle.paddleY);
    yspeed += gravity;//Ball is not affected thus the pong ball has no gravity
    x += xspeed * xspeedChange;
    y += yspeed * xspeedChange;
  }//end step
}
