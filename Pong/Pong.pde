//Globlal Variables
float QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight;
color QuitbuttonColor;
color red = #F52A2A;
color grey = #A09999;
void setup() {
  fullScreen();
  //Ball myBall= new Ball();
  //println("Exciting.....not exciting");
  //exit();

  QuitrectX= displayWidth*19.5/20;
  QuitrectY = displayHeight*0;
  QuitrectWidth= displayWidth*1/25;
  QuitrectHeight = displayHeight*1/20;

 
}//end setup

void draw() {
  fill(QuitbuttonColor);
  rect(QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight);
   if ( mouseX >= QuitrectX && mouseX<= QuitrectX+QuitrectWidth && mouseY >=QuitrectY && mouseY <= QuitrectY+QuitrectHeight)
  {
    QuitbuttonColor = red;
  } else {
    QuitbuttonColor = grey;
  }
}//end draw

void mousePressed() {
  if ( mouseX >= QuitrectX && mouseX<= QuitrectX+QuitrectWidth && mouseY >=QuitrectY && mouseY <= QuitrectY+QuitrectHeight) exit();
}//end mousePressed

void keyPressed() {
}//end keyPressed
