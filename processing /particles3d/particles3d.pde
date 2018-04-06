import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam;

PImage img;

ArrayList <Particle> dudes;


void setup (){
size (800,600,P3D);
//background(0);
cam = new PeasyCam(this,400);
translate(width/2,height/2);

dudes = new ArrayList <Particle>();
img = loadImage ("wkndfvr.jpg");

}

void draw(){
  background(0);
  
  beginShape(TRIANGLE_STRIP);
  
  
  
  for (Particle p : dudes){
  p.update();
  //p.display(); //run our display method
  vertex(p.loc.x,p.loc.y,p.loc.z);
  }
  
  endShape(CLOSE);
  
}

void keyPressed(){
  switch(key){
    case ' ':
    dudes.add(new Particle(0,0,0));
    break;
  } 
}

void mousePressed(){
  
  /*for (int i=0; i<50; i ++) {
  Particle mini = new Particle(mouseX,mouseY);
  dudes.add(mini);
  } */
}