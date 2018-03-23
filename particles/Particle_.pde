class Particle{
  float x;
  float y;
  float r,g,b;
  
  PVector vel;
  PVector acc;
  PVector loc;
  
  color c;
  
 Particle(float px, float py){
 
   
   
   x =px;
   y =py;
   
   r = random(0,255);
   g = random (0,255);
   b = random (0,255);
   
   acc = new PVector(0,0);
   vel = new PVector(random(-5,5),random(-5,5));
   loc = new PVector (x,y);
   
 }
 
 void update(){
 //x = x + random(-5,5);
 //y=y+ random(-5,5);
 
 vel.add(acc); //push to the direction
 
 PVector r = PVector.random2D();
 r.mult(0.85);//amount of wiggle
 vel.add(r);
 
 loc.add(vel); //update location
  acc.mult(0);
 
      c = img.get(int(loc.x), int(loc.y));
 }
 
 void display(){
   noStroke();
   //fill(r,g,b,30);
   
   //color c = img.get(int(loc.x), int(loc.y));
   fill(c);
   
   ellipse(loc.x,loc.y,15,15);
   
 }
}