double limit = 400;
public void setup()
{
  size(600,600);
}

public void draw()
{
  background(0);
  myFractal(100, 150, 400);
  myFractal2(100, 150, 400);
  myFractal3(500, 150, 400);
  myFractal4(100, 150, 400);
  
}

public void myFractal(float x, float y, float len)
{
  if(len <= limit)
    {
      noFill();
      stroke(55, 198, 255);
      triangle(x, y, x + len, y, x + len/2, y + len);
    }
    else
    {
      myFractal(x, y, len/2);
      myFractal(x + len/2, y, len/2);
      myFractal(x + len/4, y + len/2, len/2);
    }
}

public void myFractal2(float x, float y, float len)
{
  if(len <= limit)
    {
      noFill();
      stroke(55, 198, 255);
      triangle(x, y, x + len, y, x + len/2, y - len/4);
    }
    else
    {
      myFractal2(x, y, len/2);
      myFractal2(x + len/2, y, len/2);
      myFractal2(x + len/4, y - len/8, len/2);
    }
}

public void myFractal3(float x, float y, float len)
{
  if(len <= limit)
    {
      noFill();
      stroke(55, 198, 255);
      triangle(x, y, x, y + 0.6 * len, x - len/2, y + len);
    }
    else
    {
      myFractal3(x, y, len/2);
      myFractal3(x - len/4, y + len/2, len/2);
      myFractal3(x, y + 0.3 * len, len/2);
    }
}

public void myFractal4(float x, float y, float len)
{
  if(len <= limit)
    {
      noFill();
      stroke(55, 198, 255);
      triangle(x, y, x, y + 0.6 * len, x + len/2, y + len);
    }
    else
    {
      myFractal4(x, y, len/2);
      myFractal4(x + len/4, y + len/2, len/2);
      myFractal4(x, y + 0.3 * len, len/2);
    }
}

public void keyPressed()
{
  if((key == 'e' || key == 'E') && limit > 0.5)
  {
    background(0);
    limit = limit / 2;
  }
  if((key == 'q' || key == 'Q') && limit < 400)
  {
    background(0);
    limit = limit * 2;
  }
}
