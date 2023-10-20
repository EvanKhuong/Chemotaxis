class Walker
{
  int myX, myY;
  Walker()
  {
    myX = myY = 250;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    if (mouseX>myX){
      myX = myX-(int)(Math.random()*5)-6;
    }
    if (mouseX<=myX){
      myX = myX+(int)(Math.random()*5)+6;
    }
    if (mouseY>myY){
      myY = myY-(int)(Math.random()*5)-6;
    }
    if (mouseY<=myY){
      myY = myY+(int)(Math.random()*5)+6;
    }
    if (myX>470){
        myX=myX-10;
      }
    if (myX<30){
        myX=myX+10;
      }
    if (myY>470){
        myY=myY-10;
      }
    if (myY<30){
        myY=myY+10;
      }
    fill(255,0,255);
    ellipse(myX,myY,20,20);
  }
}
Walker[] bob;
void setup()
{
  size(500,500);
  bob = new Walker[10];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Walker();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < bob.length; i++)
  {
  bob[i].show();
  bob[i].walk();
  }
}
