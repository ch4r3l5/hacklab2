PImage img;

ArrayList <Particle> dudes;


void setup (){
size (800,600);
background(0);
dudes = new ArrayList <Particle>();
img = loadImage ("orangebike.jpg");
//image(img,0,0);

}

void draw(){
  //background(0);
  //image(img,0,0,400,400);
  
  for (Particle p : dudes){
  p.update();
  p.display(); //run our display method
  }
  
}

void keyPressed(){
  
}

void mousePressed(){
  
  for (int i=0; i<50; i ++) {
  Particle mini = new Particle(mouseX,mouseY);
  dudes.add(mini);
  }
}