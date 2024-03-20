//Globlal Variables
Ball myBall;//Both half's of constructor
//Ball yourBall;
//int NumberofStars=500;
//Stars[] stars= new Star [NumberofStars];
Ball[] fireworks = new Ball[25];
Ball movedBall;
Paddle myPaddle, yourPaddle;

float netX, netY, netX2, netY2;
//float tabX,tabY,tabWidth,tabHeight;


color white = #FAFFFA;
color Black = #000000;
color ligtPurple=#EFBBF7;
color pongtablecolor = 255 ;//ERROR move to TabLe CLASS
float gravitya=-0.5;
//float delay=0.5;
void setup() {
  fullScreen();

  println("Exciting.....not exciting");
  //exit();
 
buttonsetup();
  netX = displayWidth*1/2;
  netY = displayHeight*0;
  netX2= displayWidth*1/2;
  netY2=  displayHeight*1;





  //population
  myBall = new Ball();
  //  yourBall = new Ball();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(displayWidth*-1, displayHeight*-1, 0.5);
  }
  // yourBall.x
  movedBall = new Ball(displayWidth*-1, displayHeight*-1, myBall.diameter, myBall.colour, myBall.xspeed, myBall.yspeed, myBall.xspeedChange, myBall.yspeedChange);
  myPaddle = new Paddle(0, myBall.diameter);
  yourPaddle = new Paddle(displayWidth, myBall.diameter);
}
//end setup

void draw() {
  background(pongtablecolor);//ERROR nightmode is known in class not driver
  buttondraw();
  myPaddle.draw();
  yourPaddle.draw();
  myBall.tableYUpdate(myPaddle.tableY, myPaddle.tableHeight, myPaddle.tableWidth, myPaddle.tableX, myPaddle.paddleX,yourPaddle.paddleX, myPaddle.paddleY,yourPaddle.paddleY,myPaddle.paddleWidth,myPaddle.paddleHeight,yourPaddle.paddleHeight);
  //myBall.bounce(myPaddle.paddleX,yourPaddle.paddleX);
//  movedBall.tableUpdate(myPaddle.tableY, myPaddle.tableHeight);

  if ( myBall.disappear == true) {
    //empty IF
  } else {
    myBall.draw();
    myBall.disappear = false;
  }
  if (movedBall.disappear == true)
  {
  } else {
    movedBall.draw();
    movedBall.disappear = false;
  }


  if (myBall.x<(2*myBall.diameter) || myBall.x>(displayWidth-(2*myBall.diameter))) 
    myBall.goalExplosion(myBall.x, myBall.y, gravitya);  
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }/*
  if (myBall.x < myPaddle.paddleX+myPaddle.paddleWidth-(1/2*myBall.diameter)|| myBall.x > myPaddle.paddleX+myPaddle.paddleWidth+(1/2*myBall.diameter)) {
    myBall.goalExplosion(myBall.x, myBall.y, gravitya);
      myBall.goalExplosion = true;
 
  }*/
    
  
  /*  if (myBall.y < myPaddle.paddleY+myPaddle.paddleHeight-(1/2*myBall.diameter)|| myBall.y > myPaddle.paddleY+myPaddle.paddleHeight+(1/2*myBall.diameter)) {
    myBall.goalExplosion(myBall.x, myBall.y, gravitya);
    myBall.goalExplosion = false;
  }*/


  // color(ligtPurple);
  //rect(tabX,tabY,tabWidth,tabHeight);

  //line(goalX, goalY, goalX2, goalY2);
  // line(goalX3, goalY3, goalX4, goalY4);
} //end draw




void keyPressed() {
myPaddle.keyPressedWASD();
yourPaddle.keyPressedARROW();
}

void keyReleased() {
myPaddle.keyReleasedWASD();
yourPaddle.keyReleasedARROW();
}//end keyreleased

void mousePressed() {
buttonPressed();
  movedBall = new Ball(mouseX, mouseY, myBall.diameter, myBall.colour, myBall.xspeed, myBall.yspeed, myBall.xspeedChange, myBall.yspeedChange);
}//end mousePressed
