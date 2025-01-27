int base = 400;
public void setup()
{
size(500, 500);
background(35);
}
public void draw()
{
background(35);
sierpinski(250, 250, 400);
}
public void mouseClicked()//optional
{
if(mouseButton == LEFT){
  base /= 2;
} else if(mouseButton == RIGHT){
  if(base < 400){
    base *= 2;
  }
}
}
public void sierpinski(int x, int y, int len) 
{
if(len <= base){
  triangle(x-len/2, y+len/2, x, y-len/2, x+len/2, y+len/2);
} else {
  sierpinski(x-len/4, y+len/4, len/2);
  sierpinski(x, y-len/4, len/2);
  sierpinski(x+len/4, y+len/4, len/2);
}
}
