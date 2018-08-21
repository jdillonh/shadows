//record from 0 -> 629 for a nice loop

square a;
int frame = 1;
Boolean recording = false;

void setup()
{
  frameRate(160);
  smooth(8);
  size(600,600);
  a = new square(200);
}


void draw()
{
  println(frame);
  frame += 1;
  background(0);
  a.show();
  a.shadow();
  if (recording)
   {  
     save("/Users/dillonhall/Desktop/sketch/frame"+
                 getFrameNumber(frame)+".png");
   }
}
