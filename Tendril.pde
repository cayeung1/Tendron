class Tendril{
  
  public final static int SEG_LENGTH = 4; 
  private int myNumSegments, myX, myY;
  private double myAngle;

  public Tendril(int len, double theta, int x, int y){

    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show(){
  strokeWeight(3);
    int startX = myX;
    int startY = myY;
    
    if(myNumSegments >= 60){
      stroke(100, 0, 42);
    }
    else if(myNumSegments >= 30){
      stroke(50, 175 ,55);
    }
    else if(myNumSegments >= 10){
      stroke(0, 0, 0);
    }
    else {
      stroke(255, 50, 0);
    }
      
    for(int i = 0; i<myNumSegments; i++){
      myAngle += Math.random()*0.5 - 0.2;
      int endX = startX + (int)(SEG_LENGTH*Math.cos(myAngle));
      int endY = startY + (int)(SEG_LENGTH*Math.sin(myAngle));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments > 10){
    Cluster x  = new Cluster(myNumSegments / 4, startX, startY);
   }
  }
}
