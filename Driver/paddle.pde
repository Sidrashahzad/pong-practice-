class Paddle {
  //Global variables
  //
  float tableX, tableY, tableWidth, tableHeight;
  float goalX, goalY, goalWidth, goalHeight;
  float goalX2, goalY2;
  float paddleX, paddleY, paddleWidth, paddleHeight, PaddleStartHeight;
  float paddlecolor=#4C15CE;
  float PaddleTravelDistance;
  Boolean up=false, down=false;
  // overloaded constructor
  //Purpose left and right paddles
  Paddle(float PaddleStartparameter, float ballDiameterParameter ) {
    goalWidth = ballDiameterParameter*2;
    paddleWidth=ballDiameterParameter*1/2;
    tableY=displayHeight*1/10;
    tableHeight=displayHeight*8/10;

    //CAUTION netX will
    if (PaddleStartparameter==0)goalX=PaddleStartparameter;
    if (PaddleStartparameter==displayWidth)
    {
      goalX = PaddleStartparameter-goalWidth*2-paddleWidth;
    }

    this.paddleX=goalX+goalWidth;
    if (PaddleStartparameter==displayWidth)goalX=PaddleStartparameter-goalWidth;
    this.PaddleStartHeight=0.25;
    this.paddleHeight=tableHeight*PaddleStartHeight;
    this.paddleY= tableY+(tableHeight*1/2)-(paddleHeight*1/2);//

    // Paddle2X=goalX3-PaddleWidth;
    paddlecolor=0;
    this.PaddleTravelDistance=4;
  }//end paddle constructor

//pong tableconstructor 
//caution 
  Paddle () {
  }//end Pongtable constructor 
  void draw() {
    fill(paddlecolor);
    paddles();
    fill(0);
    //
    if (up == true) movePaddleUp();
    if (down == true)movePaddleDown();
    ///float goalX3, goalY3, goalX4, goalY4;
  }
  void paddles() {
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
  }

  void movePaddleDown() {
    paddleY+=PaddleTravelDistance;
    if (paddleY>tableY+tableHeight-paddleHeight) paddleY=tableY+tableHeight-paddleHeight;
  }

  void movePaddleUp() {
    paddleY-=PaddleTravelDistance;
    if (paddleY<tableY)paddleY=tableY;
  }
  void keyPressedWASD() {
    if ( key=='W'| key=='w') up=true;
    if ( key=='S'| key=='s') down=true;
  }//keyPressed
  void keyPressedARROW() {
    if ( key==CODED & keyCode==UP) up=true;
    if ( key==CODED & keyCode==DOWN) down=true;
  }//keyPressedARROW
  void keyReleasedWASD() {
    if ( key=='W'| key=='w') up=false;
    if ( key=='S'| key=='s') down=false;
  }//end keyReleasedWASD()
  void keyReleasedARROW() {
    if ( key==CODED & keyCode==UP) up=false;
    if ( key==CODED & keyCode==DOWN) down=false;
  }//end keyReleasedWASD
}//end paddle class
