//
float QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight;
float Player1X, Player1Y,Player1Width,Player1Height;
color QuitbuttonColor;
String exit="QUIT";
PFont Pfont;
color red = #F52A2A;
color grey = #A09999;
void buttonsetup() {

  Pfont= createFont("ArialNarrow", 48);
  QuitrectX= displayWidth*16/20;
  QuitrectY = displayHeight*18.5/20;
  QuitrectWidth= displayWidth*1/20;
  QuitrectHeight = displayHeight*1/20;
  
  Player1X=displayWidth*4/20;
  Player1Y= displayHeight*18.5/20;
  Player1Width= displayWidth*1/20;
  Player1Height= displayHeight*1/20;
  
 
}

void buttondraw() {
  fill(QuitbuttonColor);
  rect(QuitrectX,QuitrectY,QuitrectWidth,QuitrectHeight);
  fill(255);
  textPre();
  text(exit,QuitrectX,QuitrectY,QuitrectWidth,QuitrectHeight);
  textPost();
  if(mouseX>=QuitrectX && mouseX<=QuitrectX+QuitrectWidth && mouseY>=QuitrectY && mouseY<=QuitrectY+QuitrectHeight)
  {QuitbuttonColor=red;
  }else{
  QuitbuttonColor=grey;
  }
  
  rect(Player1X, Player1Y,Player1Width,Player1Height);
  
  
  
  
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

void buttonPressed() {
  if(mouseX>QuitrectX && mouseX<QuitrectX+QuitrectWidth && mouseY>QuitrectY && mouseY<QuitrectY+QuitrectHeight) exit();
}//end button pressed
