PImage bodybuilder;
void setup(){
  size(1200, 1000);
 
 bodybuilder = loadImage("bodybuilder.png");
 imageMode(CENTER);
 background(0, 200, 200);
 image(bodybuilder, width/2, height/2, 900, 900);
  
 //image(_____, width, height, x, y) is position of image and proportions ((:
}

void draw() {
 
  if(mousePressed ==true){ 
    
    pushMatrix();
    strokeWeight(1);
    stroke(0, 0, 0);
    translate(mouseX, mouseY);
    for(int i = 0; i<5; i++) {
      frameRate(5);
      line(random(0-10, 0+10), 0+10, random(0-10, 0+10), 0-10);
    }
    popMatrix();
    
    
  }
 }


void keyPressed() {
  println("presed");
  if (key == 's' || key == 'S') {
    //saves an image of a sketch
    saveFrame("hairybodybuilder-######");
  }}
