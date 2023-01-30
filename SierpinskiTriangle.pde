int base = 20;
public void setup()
{
size(500, 500);
}
public void draw()
{
sierpinski(250, 250, 400);
}
public void mouseClicked()//optional
{
base -= 1;
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
