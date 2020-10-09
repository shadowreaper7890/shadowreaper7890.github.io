class brick{
  float xpos;
  float ypos;
  
  brick(float x, float y){
    xpos = x;
    ypos = y;
  }
  
  void show(){
    rectMode(CENTER);
    fill(#66ADF7);
    rect(xpos, ypos, brickw, brickh);
  }
  
  boolean impact(ball b) { 
    if (xpos - brickw/2 < b.x && b.x < xpos + brickw/2 &&
        ypos + brickh/2 > b.y-balld/2){
          return true;
        }
      else{
          return false;
      }
  }
}
