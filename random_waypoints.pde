Point[] destinations; 
Point mover;

void setup(){
  //frameRate(24);
  //set the size and background color of the sketch
   size(700,700);
   //fullScreen();
   background(255);
   //instantiate array to hold destination points
   destinations = new Point[3];
   
   //generate a random values to determine the starting position of the mover
   mover = new Point(random(0,width),random(0,height));

  //perfect triangle destination point example
  destinations[0] = new Point(width/2, 0);
  destinations[1] = new Point(0, height);
  destinations[2] = new Point(width, height);
  //random triangle destination point example
  
  //generate random values from 0 to the size of the sketch and populate the destination points
  for(int i = 0; i < destinations.length; i++){
    //destinations[i] = new Point(random(0, width), random(0, height));
    color purple = color (110, 86, 136);
    fill(255,0,0);
    noStroke();
    //circle(destinations[i].x, destinations[i].y, sqrt(361));
  }
  
}


void draw(){
  
  //generate a random integer number from 0 to the length of the destinations
  int direction = int(random(destinations.length));
  
  //calculate the midpoint between the mover point and the current destination point
  Point new_mover_location = new Point((destinations[direction].x + mover.x)/2, (destinations[direction].y + mover.y)/2);
  //set the mover point to the new_mover_location
  mover = new_mover_location;
  //println(mover.x, mover.y);
  
  color to = color(255,0,0,random(255));
  color from = color(0,0,255,random(255));
  
  color lerp = lerpColor(from, to, mover.y/height);
  println(mover.y/height);
  
  fill(lerp);
  //fill(0,0,(255.0/height) * mover.y);
  //println((255.0/height) * mover.y);
  noStroke();
  circle(mover.x, mover.y, sqrt(2));

}



class Point { 
 
  float x; 
  float y;
 
  Point (float x_, float y_) { 
    x = x_; 
    y = y_;
  }
}
