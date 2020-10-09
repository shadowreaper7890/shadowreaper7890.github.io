class paddle{
  float x, y, d, h;
  
  paddle(){
    x = mouseX;
    y = height - paddleh;
    
  }
  
  void show(){
    fill(#4C88E5);
    rect(x, y, paddlew, paddleh);
  }
  void act(){
    x = mouseX;//moving paddle
  }
  
  boolean impact(ball b) { //check if ball impacted with paddle
    if (x - paddlew/2 <= b.x &&
        b.x <= x + paddlew/2 &&
        y - paddleh/2 < b.y+balld/2){
          return true;
        }
      else{
          return false;
      }
  }
  
}
