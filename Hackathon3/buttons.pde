//
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
void buttonsetup() {

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

void buttondraw() {
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

void buttonPressed() {
  if(mouseX>QuitrectX && mouseX<QuitrectX+QuitrectWidth && mouseY>QuitrectY && mouseY<QuitrectY+QuitrectHeight) exit();
}//end button pressed
