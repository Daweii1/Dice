  int total = 0;
  int rolls = 0;
  void setup()
  {
    size(600,700);
     
  noLoop();
  }
  void draw()
  {
    background(255);
      for(int y= 0; y<= 400; y+= 200)
{
    for(int x = 0 ; x<= 400;x+=200)
    {
      Die david = new Die(x,y);
       david.roll();
      david.show();
      
      
    }

      }
  
       text("Sum: " + total, 250, 650);
       text("Rolls: " + rolls, 350, 650);

  }
  void mousePressed()
  {
      
      redraw();
      rolls +=1;
          total = 0;
  }
  class Die //models one single dice cube
  {
      int myX, myY, dots;
          
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;
      }
      void roll()
      {
        dots = (int)(Math.random()*6+1);
       total += dots;
          
      }
      void show()
      {
       
        fill(255);
        rect(myX, myY, 200, 200,20);
        fill(0);
        text(dots, myX+25, myY+25);
        fill(0);
        
          if (dots == 1) {

          ellipse(myX + 100, myY + 100, 20, 20);
          } else if(dots == 2) {
          ellipse(myX + 20, myY + 25, 20, 20);
          ellipse(myX + 175, myY + 175, 20, 20);  
          } else if (dots == 3) {
         ellipse(myX + 20, myY + 25, 20, 20);
          ellipse(myX + 175, myY + 175, 20, 20); 
          ellipse(myX + 97.5, myY + 100, 20, 20);
          } else if(dots == 4) {
          ellipse(myX + 20, myY + 25, 20, 20);
          ellipse(myX + 20, myY + 175, 20, 20);
          ellipse(myX + 175, myY + 175, 20, 20); 
           ellipse(myX + 175, myY + 25, 20, 20);   
          } else if(dots == 5) {
          ellipse(myX + 20, myY + 25, 20, 20);
          ellipse(myX + 20, myY + 175, 20, 20);
          ellipse(myX + 175, myY + 175, 20, 20); 
          ellipse(myX + 175, myY + 25, 20, 20);   
          ellipse(myX + 97.5, myY + 100, 20, 20);
          }else {
          ellipse(myX + 20, myY + 25, 20, 20);
          ellipse(myX + 20, myY + 175, 20, 20);
          ellipse(myX + 175, myY + 175, 20, 20); 
          ellipse(myX + 175, myY + 25, 20, 20);   
          ellipse(myX + 20, myY + 100, 20, 20);
          ellipse(myX + 175, myY + 100, 20, 20); 
  }
  }
  }





   
