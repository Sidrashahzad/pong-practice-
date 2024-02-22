//Globlal Variables
Ball myBall;//Both half's of constructor
//Ball yourBall;
Ball[] fireworks = new Ball[25];
Ball movedBall;
float QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight;
float netX, netY, netX2, neetY2;
color QuitbuttonColor;
color red = #F52A2A;
color grey = #A09999;
color white = #FAFFFA;
color Black = #000000;
color pongtablecolor = 255 ;//ERROR move to TabLe CLASS
String exit="X";
PFont Pfont;
void setup() {
  fullScreen();

  println("Exciting.....not exciting");
  //exit();
  Pfont= createFont("ArialNarrow", 48);
  QuitrectX= displayWidth*19.2/20;
  QuitrectY = displayHeight*0;
  QuitrectWidth= displayWidth*1/25;
  QuitrectHeight = displayHeight*1/20;

  netX = displayWidth*1/2;
  netY = displayHeight*0;
  netX2= displayWidth*1/2;
  neetY2=  displayHeight*1;
  //population
  myBall = new Ball();
//  yourBall = new Ball();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(displayWidth*-1, displayHeight*-1, 0.5);
  }
  // yourBall.x
  movedBall = new Ball(displayWidth*-1, displayHeight*-1, myBall.diameter, myBall.colour, myBall.xspeed, myBall.yspeed, myBall.xspeedChange, myBall.xspeedChange);
}//end setup
void textPre() {
  fill(Black);
  textAlign(CENTER, CENTER);
  textFont(Pfont, 20);
}
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
  Quittext();
  if ( mouseX >= QuitrectX && mouseX<= QuitrectX+QuitrectWidth && mouseY >=QuitrectY && mouseY <= QuitrectY+QuitrectHeight)
  {
    QuitbuttonColor = red;
  } else {
    QuitbuttonColor = grey;
  }
  strokeWeight(5);
  line(netX, netY, netX2, neetY2);
  strokeWeight(2);
} //end draw

void mousePressed() {
  if ( mouseX >= QuitrectX && mouseX<= QuitrectX+QuitrectWidth && mouseY >=QuitrectY && mouseY <= QuitrectY+QuitrectHeight) exit();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(mouseX, mouseY, 0.5);
  }
  movedBall = new Ball(mouseX, mouseY, myBall.diameter, myBall.colour, myBall.xspeed, myBall.yspeed, myBall.xspeedChange, myBall.xspeedChange);

}//end mousePressed

void textPost() {
  fill(white);
}
void Quittext() {
  textPre();
  text(exit, QuitrectX, QuitrectY, QuitrectWidth, QuitrectHeight);
  textPost();
}
void keyPressed() {
}//end keyPressed
