class Paddle {
  //Global variables
  //
  
  float tableX, tableY, tableWidth, tableHeight;
  float goalX, goalY, goalWidth, goalHeight;
  float goalX2, goalY2;
  float paddleX, paddleY, paddleWidth, paddleHeight, PaddleStartHeight;
  float paddlecolor=#AC98C1;
  float PaddleTravelDistance;
  Boolean up=false, down=false;
 float QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight;
float Player1X, Player1Y,Player1Width,Player1Height;
float MenuX,MenuY,MenuWidth,MenuHeight;
color QuitbuttonColor;
color player1Color ;
color menuColor;
String exit="QUIT";
String player1="1player";
String Menu="Menu";
PFont Pfont;
color red = #F52A2A;
color grey = #A09999; 
  // overloaded constructor
  //Purpose left and right paddles
  Paddle(float PaddleStartparameter, float ballDiameterParameter ) {
    tablePopulation();
    goalWidth = ballDiameterParameter*2;
    paddleWidth=ballDiameterParameter*1/2;
   

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
    paddlecolor=#AC98C1;
    this.PaddleTravelDistance=4;
  }//end paddle constructor

  //pong tableconstructor
  //caution


  void draw() {
    if(paddleX<displayWidth*1/2){
    fill(#B9D8FF);
    table();
    fill(0);
    }fill(paddlecolor);
    paddles();
    fill(0);
    //
  line(displayWidth*1/2,tableY,displayWidth*1/2,displayHeight*9/10 );
    if (up == true) movePaddleUp();
    if (down == true)movePaddleDown();
    ///float goalX3, goalY3, goalX4, goalY4;
   fill(QuitbuttonColor);
  rect(QuitrectX,QuitrectY,QuitrectWidth,QuitrectHeight);
  fill(255);
  textPre();
  text(exit,QuitrectX,QuitrectY,QuitrectWidth,QuitrectHeight);
  textPost();
  if(mouseX>=QuitrectX && mouseX<=QuitrectX+QuitrectWidth && mouseY>=QuitrectY && mouseY<=QuitrectY+QuitrectHeight)
  {QuitbuttonColor=#B9D8FF;
  }else{
  QuitbuttonColor=grey;
  }
  
  fill(player1Color);
  rect(Player1X, Player1Y,Player1Width,Player1Height);
  fill(255);
  textPre();
  text(player1,Player1X, Player1Y,Player1Width,Player1Height);
  textPost();

   if(mouseX>=Player1X && mouseX<=Player1X+Player1Width && mouseY>=Player1Y && mouseY<=Player1Y+Player1Height)
  {player1Color=#B9D8FF;
  }else{
  player1Color=grey;
  }
  fill(menuColor);
  rect(MenuX,MenuY,MenuWidth,MenuHeight);
  fill(255);
  textPre();
  text(Menu,MenuX,MenuY,MenuWidth,MenuHeight);
  textPost();
   if(mouseX>=MenuX && mouseX<=MenuX+MenuWidth && mouseY>=MenuY && mouseY<=MenuY+MenuHeight)
  {menuColor=#B9D8FF;
  }else{
  menuColor=grey;
  }
  
}
  
  
void textPre() {
  fill(Black);
  textAlign(CENTER, CENTER);
  textFont(Pfont, 30);
}
void textPost() {
  fill(white);
}
void Quittext() {
  textPre();
  text(exit, QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight);
  textPost();
}  
  //Draw table
  void tablePopulation() {
    tableX=displayWidth*0;
    tableY= displayHeight*1/10;
    tableWidth=displayWidth-1;
    tableHeight=displayHeight*8/10;
     Pfont= createFont("ArialNarrow", 48);
  QuitrectX= displayWidth*11.5/20;
  QuitrectY = displayHeight*18.5/20;
  QuitrectWidth= displayWidth*1/19;
  QuitrectHeight = displayHeight*1/20;
  
  Player1X=displayWidth*7.5/20;
  Player1Y= displayHeight*18.5/20;
  Player1Width= QuitrectWidth;
  Player1Height=QuitrectHeight;
  
  MenuX=displayWidth*9.5/20;
  MenuY= displayHeight*18.5/20;
  MenuWidth=QuitrectWidth;
  MenuHeight=QuitrectHeight;
  
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  void table() {
    rect(tableX,tableY,tableWidth,tableHeight);
  }//end table
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
  void buttonPressed() {
  if(mouseX>QuitrectX && mouseX<QuitrectX+QuitrectWidth && mouseY>QuitrectY && mouseY<QuitrectY+QuitrectHeight) exit();
}//end button pressed

}//end paddle class
