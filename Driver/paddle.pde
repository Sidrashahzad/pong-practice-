class Paddle {
  //Global variables
  //
  float tableX, tableY, tableWidth, tableHeight;
  float goalX, goalY, goalWidth, goalHeight;
  float goalX2, goalY2;
  float PaddleX, PaddleY, PaddleWidth, PaddleHeight;
  float paddlecolor=#4C15CE;
  // overloaded constructor
  //Purpose left and right paddles 
  Paddle (float PaddleStartparameter float BalldiameterParameter ) {
  goalWidth = BalldiameterParameter*3;
  PaddleWidth=BalldiameterParameter;
  //CAUTION netX will 
  if (PaddleStartparameter==0)goalX=PaddleStartparameter;
  if(PaddleStartparameter==displayWidth)
  {goalX = PaddleStartparameter-goalWidth;}
  this.PaddleX=goalX+goalWidth;
  PaddleY= displayHeight*0;

  PaddleHeight=displayHeight*1/9;
  // Paddle2X=goalX3-PaddleWidth;
   color paddlecolor=#4C15CE;
   
   tableX= displayWidth*0;
   tableY= displayHeight*0;
   tableWidth=displayWidth*1;
   tableHeight=displayHeight*1;
   
    goalX=tableX;
    goalY=tableY;
    goalWidth= displayWidth*1/10;
    goalHeight=displayHeight*1;
    goalX2=tableX-1/10;
    goalY2=tableY;
  }//end paddle constructor
  void draw() {
  rect(tableX, tableY, tableWidth, tableHeight); 
 rect(goalX, goalY, goalWidth, goalHeight);
 rect(goalX2, goalY2,goalWidth, goalHeight);
  ///float goalX3, goalY3, goalX4, goalY4;
  }

 //end draw  goalX, goalY, goalX2, goalY2;
//  float goalX3, goalY3, goalX4, goalY4;
  // voids and returns
}//end paddle class
