class Paddle {
  //Global variables
  //
  float tableX, tableY, tableWidth, tableHeight;
  float goalX, goalY, goalWidth, goalHeight;
  float goalX2, goalY2;
  float PaddleX, PaddleY, PaddleWidth, PaddleHeight, PaddleStartHeight;
  float paddlecolor=#4C15CE;
  float PaddleTravelDistance;
  // overloaded constructor
  //Purpose left and right paddles
  Paddle (float PaddleStartparameter float balldiameterParameter ) {
    goalWidth = BalldiameterParameter*3;
    PaddleWidth=BalldiameterParameter;
    tableY=displayHeight*1/10;
    tableHeight=displayHeight*8/10;
    PaddleStartHeight = 1/4;//if easter egg number must be trapped

    //CAUTION netX will
    if (PaddleStartparameter==0)goalX=PaddleStartparameter;
    if (PaddleStartparameter==displayWidth)
    {
      goalX = PaddleStartparameter-goalWidth*2-paddleWidth;
    }

    this.PaddleX=goalX+goalWidth;
    this.PaddleHeight=tableHeight*PaddleStartHeight;
    if (PaddleStartparameter==displayWidth)goalX=PaddleStartparameter-goalWidth;
    this.PaddleY= tableY+(tableHeight*1/2)-(PaddleHeight*1/2);//

    PaddleHeight=displayHeight*1/9;
    // Paddle2X=goalX3-PaddleWidth;
    color paddlecolor=#4C15CE;
    this.PaddleTravelDistance=1;
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
    rect(goalX2, goalY2, goalWidth, goalHeight);
    ///float goalX3, goalY3, goalX4, goalY4;
  }
  void paddle() {
    rect(PaddleX, PaddleY, PaddleWidth, PaddleHeight);
  }

void paddleMoved(){}
  //end draw  goalX, goalY, goalX2, goalY2;
  //  float goalX3, goalY3, goalX4, goalY4;
  // voids and returns
}//end paddle class
