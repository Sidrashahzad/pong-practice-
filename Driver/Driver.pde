//Globlal Variables
Ball myBall;//Both half's of constructor
//Ball yourBall;
Ball[] fireworks = new Ball[25];
Ball movedBall;
float QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight;
color QuitbuttonColor;
color red = #F52A2A;
color grey = #A09999;
color pongtablecolor = 255 ;//ERROR move to TabLe CLASS

void setup() {
  fullScreen();

  println("Exciting.....not exciting");
  //exit();

  QuitrectX= displayWidth*19.2/20;
  QuitrectY = displayHeight*0;
  QuitrectWidth= displayWidth*1/25;
  QuitrectHeight = displayHeight*1/20;

  //population
  myBall = new Ball();
  // yourBall = new Ball();
  for (int i=0; i < fireworks.length; i++) {
      fireworks[i] = new Ball(displayWidth*-1, displayHeight*-1,0.5);

  }
  // yourBall.x
  movedBall = new Ball(displayWidth*-1, displayHeight*-1)
}//end setup

void draw() {

  background(pongtablecolor);//ERROR nightmode is known in class not driver
  myBall.draw();
   for (int i=0; i < fireworks.length; i++) {
      fireworks[i].draw();
   }
   println(fireworks[0].y);
  // add delay in paddle example
  // yourBall.draw();
  //  println(myBall.XDirection, myBall.YDirection);
  fill(QuitbuttonColor);
  rect(QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight);
  if ( mouseX >= QuitrectX && mouseX<= QuitrectX+QuitrectWidth && mouseY >=QuitrectY && mouseY <= QuitrectY+QuitrectHeight)
  {
    QuitbuttonColor = red;
  } else {
    QuitbuttonColor = grey;
  }
} //end draw

void mousePressed() {
 if ( mouseX >= QuitrectX && mouseX<= QuitrectX+QuitrectWidth && mouseY >=QuitrectY && mouseY <= QuitrectY+QuitrectHeight) exit();
for (int i=0; i < fireworks.length; i++) {
      fireworks[i] = new Ball(mouseX, mouseY, 0.5);
}
movedBall = new Ball(mouseX, mouseY, myBall.diameter)
}//end mousePressed


void keyPressed() {
}//end keyPressed

void ballCollesions() {
}
