class Node{
  PVector startPos;
  PVector endPos;
  
  PVector startPointVelocity;
  PVector endPointVelocity;
  
  Node(){
    this.startPos= new PVector(random(width/2), random(height));
    this.endPos= new PVector(random(width- width/2), random(height));
    
    this.startPointVelocity= new PVector(random(1.5, 3.5), random(1.0, 4.0));
    this.endPointVelocity= new PVector(random(1.5, 3.5), random(1.0, 4.0));
  }
  
  void move(){
    startPos.add(startPointVelocity);
    endPos.add(endPointVelocity);
  }
  
  void show(){
    pushMatrix();
    stroke(random(255), random(255), random(255));
    strokeWeight(8);
    line(startPos.x,startPos.y, endPos.x, endPos.y);
    popMatrix();
  }
  
  void boundary()
  {
    if(startPos.x>width || startPos.x<=0)
      startPointVelocity.x*=-1;
    if(startPos.y>height || startPos.y<=0)
      startPointVelocity.y*=-1;
      
    if(endPos.x>width || endPos.x<=0)
      endPointVelocity.x*=-1;
    if(endPos.y>height || endPos.y<=0)
      endPointVelocity.y*=-1;
  }
}