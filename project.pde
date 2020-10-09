float paddlew = 150; //global variables
float paddleh = 20;
float balld = 25;
int numbrickrows = 15;
final int brickw = 50;
final int brickh = 20;

ball myball; //classes
paddle mypaddle;
brick[] bricks = new brick[0];


void setup(){
  size(600, 600);
  myball = new ball();
  mypaddle = new paddle();
  
  //bricks
  for (int j=0; j < numbrickrows; j++) { // rows
    // location of each row  
    int y = brickh / 2 + j * brickh;
    // set the row offset
    int offset = 0;
    if (j % 2 == 0) {
      offset = brickw / 2;
    }
    // draw the row
    for (int i=offset; i < width+brickw/2.0; i += brickw) { // columns
      bricks = (brick[]) append(bricks, new brick(i,y));
    }
  }
  
}
  
void draw(){
  background(0);
  myball.show();
  myball.act();
  mypaddle.show();
  mypaddle.act();
  
  for (int i=0; i < bricks.length; i=i+1){ //creating the bricks
    if (bricks[i] != null){
      bricks[i].show();
    }
  }
  
  
  if (mypaddle.impact(myball)){ //ball bounces of paddle
    myball.vy=-myball.vy*(random(0.5,1.5)); //changes to random speed with each impact
  }
  
  for (int i=0; i < bricks.length; i=i+1){ //when ball impacts with brick, delete brick
    if (bricks [i] != null && bricks[i].impact(myball) == true){
      myball.vy=-myball.vy;
      bricks[i] = null; 
      
    }
  }
  boolean won=true;
  for (int i=0; i < bricks.length; i=i+1){ //check if they won
    if (bricks [i] != null){
      won=false;
    }
  }
  if (won==true){ //text shows won
    fill(#F6FA3F);
    textSize(40);
    text("YOU HAVE WON", 160, height/2);
  }
  
  if (myball.balllost==true){ //text shows lose
    fill(#F6FA3F);
    textSize(40);
    text("GAME OVER", 200, height/2);
  }
}
      
