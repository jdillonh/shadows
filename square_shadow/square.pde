class square
{
  float dr = 0.01;
  PVector[] points;
  float rotation;
  PVector center;
  float size;
  
  square(float s)
  {
     points = new PVector[5];
     size = s;
     center = new PVector(width/2.5,height/2.5);
     int i = 0;
     for(float t = 0; t <= 2*PI; t+= PI/2)
     {
       PVector curr = new PVector(center.x+cos(t)*size,
                                  center.y+sin(t)*size );
       points[i] = curr;
       i+=1;
     }
  }
  void show()
  {
    pushStyle();
    strokeJoin(ROUND);
    stroke(255);
    noStroke();
    
    rotation += dr;
    int i = 0;
    for(float t = 0; t <= 2*PI; t+= PI/2)
     {
       
       PVector curr = new PVector(center.x+cos(t+rotation)*size,
                                  center.y+sin(t+rotation)*size );
       points[i] = curr;
       i+=1;
     }
    popStyle();
  }
  void shadow()
  {
    PVector[] shadows = new PVector[4];
    for(int i = 0; i < 4; ++ i)
    {
      shadows[i] = new PVector(points[i].x+500,
                               points[i].y+500);
    }
    
    pushStyle();
    stroke(255);
    strokeJoin(ROUND);
    strokeWeight(20);
    int c = 10;
    for(int i = 0; i< 4; ++i)
    {
      fill(c,200,255-c);
      c = min(255, c+255/4);
      beginShape();
      vertex(points[i].x,points[i].y);
      vertex(points[(i+1)%4].x,points[(i+1)%4].y);
      vertex(shadows[(i+1)%4].x, shadows[(i+1)%4].y);
      vertex(shadows[i].x,shadows[i].y);
      vertex(points[i].x,points[i].y);
      endShape();
    }
    
    popStyle();
  }
}
