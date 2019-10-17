void setup()
{
  size(500, 500);
  background(#F1E0D6);
  noLoop();
}
void draw()
{
  int count = 0;
  background(#F1E0D6);

    for (int y=50; y<500; y+=55) {
      for (int x=50; x<500; x+=55) {
        Dice a = new Dice(x, y, color((int)(Math.random()*256),(int)(Math.random()*256),255));
        a.show();
         count+=a.mynum;
      }
    }
    fill(100);
    textSize(30);
  text("C O U N T S : "+count,148.3,600);
  fill((int)(Math.random()*256),(int)(Math.random()*256),255);
  textSize(30);
  text("C O U N T S : "+count,150,600); 

  //your code here
}
void mousePressed()
{
  redraw();
}
class Dice //models one single dice cube
{
  int mycol, mynum, myx, myy;//variable declarations here 
  Dice(int x, int y, int col) //constructor
  {
    mycol=col;
    myx=x;
    myy=y;//variable initializations here
    roll();
  }
  void roll()
  {
    mynum=(int)(Math.random()*6)+1;
    //your code here
  }
  void show()
  {
    fill(255);
    rect(myx, myy, 50, 50);
    if (mynum==1) {
      fill(mycol);
      ellipse(myx+25, myy+25, 10, 10);//your code here
    }
    else if (mynum==2) {
      fill(mycol);
      ellipse(myx+38, myy+38, 10, 10);
      ellipse(myx+12, myy+12, 10, 10);//your code here
    }
    else if (mynum==3) {
      fill(mycol);
      ellipse(myx+38, myy+10, 10, 10);
      ellipse(myx+25, myy+25, 10, 10);
      ellipse(myx+12, myy+40, 10, 10);//your code here
    }
    else if (mynum==4) {
      fill(mycol);
      ellipse(myx+12, myy+12, 10, 10);
      ellipse(myx+38, myy+38, 10, 10);
      ellipse(myx+12, myy+38, 10, 10);
      ellipse(myx+38, myy+12, 10, 10);//your code here
    }
    else if (mynum==5) {
      fill(mycol);
      ellipse(myx+25, myy+25, 10, 10);
      ellipse(myx+12, myy+12, 10, 10);
      ellipse(myx+38, myy+38, 10, 10);
      ellipse(myx+12, myy+38, 10, 10);
      ellipse(myx+38, myy+12, 10, 10);//your code here
    }
    else {
      fill(mycol);
     ellipse(myx+38, myy+10, 10, 10);
      ellipse(myx+38, myy+25, 10, 10);
      ellipse(myx+38, myy+40, 10, 10);
      ellipse(myx+12, myy+10, 10, 10);
      ellipse(myx+12, myy+25, 10, 10);
      ellipse(myx+12, myy+40, 10, 10);//your code here
    }
    
  }
}