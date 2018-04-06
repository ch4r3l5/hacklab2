class Particle{
  float x;
  float y;
  float z;
  float r,g,b;
  
  PVector vel;
  PVector acc;
  PVector loc;
  
 Particle(float px, float py, float pz){
   x =px;
   y =py;
   z =pz;
   r = random(0,255);
   g = random (0,255);
   b = random (0,255);
   
   acc = new PVector(0,0,0);
   vel = new PVector(random(-5,5),random(-5,5), random(-5,5));
   loc = new PVector (x,y,z);
   
 }
 
 void update(){
 //x = x + random(-5,5);
 //y=y+ random(-5,5);
 
 vel.add(acc); //push to the direction
 
 PVector r = PVector.random3D();
 r.mult(0.85);//amount of wiggle
 vel.add(r);
 
 loc.add(vel); //update location
  acc.mult(0);
 
 }
 
 void display(){
   //noStroke();
   stroke(r,g,b);
   fill(r,g,b,30);
   //ellipse(loc.x,loc.y,5,5);
  // point(loc.x, loc.y, loc.z);
   
   pushMatrix();
   translate(loc.x,loc.y,loc.z);
   sphere(5);
   popMatrix();
   
 }
}