//only good for frames in the hundreds
String getFrameNumber(int f)
{
  if(f< 10)
  {
    return "00"+Integer.toString(f);
  }
  if(f<100)
  {
    return "0"+Integer.toString(f);
  }
  else return Integer.toString(f);
}
   
 
