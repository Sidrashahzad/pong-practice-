//Globlal Variables
Ball myBall;//Both half's of constructor
//Ball yourBall;
Ball[] firework = new Ball[25];
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
 
  for (int i=0; firework.length; 1++) {
      firework[i] = new Ball(0.5);

  }
  // yourBall.x
}//end setup

void draw() {

  background(pongtablecolor);//ERROR nightmode is known in class not driver
  myBall.draw();
   for (int i=0; fireworks.length; 1++) {
      firework[i] = new fireworks(i).draw;
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

for (int i=0; firework.length; ++) {
      firework[i] = new firework();
}

}//end mousePressed


void keyPressed() {
}//end keyPressed

void ballCollesions() {
}
