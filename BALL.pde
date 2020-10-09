class ball{
  float x;
  float y;
  float vx;
  float vy;
  boolean balllost=false;
  

  
  ball(){ 
    x = (width/2);
    y = height/2;
    vx = 3;
    vy = 4;
  }
    
    void show(){
      fill(#F2EBEB);
      ellipse(x, y, balld, balld);
    }
    
    void act(){
      x+=vx;
      y+=vy;
      
      if (x < balld/2 || x > width - balld/2){ //bounces off the edge
        vx=-vx;  }
      if (y < balld/2 || y > height-balld/2){
        vy=-vy;    
        if (y > 600-balld/2){ //if ball hits the floor, stops the game
          balllost=true;
          vy=0;
          vx=0;
          x=width+balld;
          y=height+balld;
          
        }
        
      }
      
     
     //println(x, y);

    }
      
}
