class Paddle {
  //Global variables
  //
  float tableX, tableY, tableWidth, tableHeight;
  float goalX, goalY, goalWidth, goalHeight;
  float goalX2, goalY2;
  float PaddleX, PaddleY, PaddleWidth, PaddleHeight, PaddleStartHeight;
  float paddlecolor=#4C15CE;
  float PaddleTravelDistance;
  Boolean up=false, down=false;
  // overloaded constructor
  //Purpose left and right paddles
  Paddle(float PaddleStartparameter, float ballDiameterParameter ) {
    goalWidth = ballDiameterParameter*2;
    PaddleWidth=ballDiameterParameter*1/2;
    tableY=displayHeight*1/10;
    tableHeight=displayHeight*8/10;

    //CAUTION netX will
    if (PaddleStartparameter==0)goalX=PaddleStartparameter;
    if (PaddleStartparameter==displayWidth)
    {
      goalX = PaddleStartparameter-goalWidth*2-PaddleWidth;
    }

    this.PaddleX=goalX+goalWidth;
    if (PaddleStartparameter==displayWidth)goalX=PaddleStartparameter-goalWidth;
    this.PaddleStartHeight=0.25;
    this.PaddleHeight=tableHeight*PaddleStartHeight;
    this.PaddleY= tableY+(tableHeight*1/2)-(PaddleHeight*1/2);//

    // Paddle2X=goalX3-PaddleWidth;
    paddlecolor=0;
    this.PaddleTravelDistance=4;
  }//end paddle constructor
  void draw() {
    fill(paddlecolor);
    paddles();
    fill(0);
      if (up == true) movePaddleUp();
    if (down == true)movePaddleDown();
    ///float goalX3, goalY3, goalX4, goalY4;
  }
  void paddles() {
    rect(PaddleX, PaddleY, PaddleWidth, PaddleHeight);
  }

  void movePaddleDown() {
    PaddleY+=PaddleTravelDistance;
    if (PaddleY>tableY+tableHeight-PaddleHeight) PaddleY=tableY+tableHeight-PaddleHeight;
    down=false;
  }

  void movePaddleUp() {
    PaddleY-=PaddleTravelDistance;
    if(PaddleY<tableY)PaddleY=tableY;
    up=false;
  }
}//end paddle class
