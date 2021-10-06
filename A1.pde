PVector creature_p, mouse_p,food_p1,food_p2,food_p3,food_p4,sleep_p;
PImage face01, face02, face03, face04, face, food, sleep;
int w=450, h=450;

void setup(){
  size(900,900,P2D);
  creature_p=new PVector(450,450);
  food_p1=new PVector(100,100);
  food_p2=new PVector(100,800);
  food_p3=new PVector(800,100);
  food_p4=new PVector(800,800);
  face01 = loadImage("face01.png");
  face01.resize(face01.width/8,face01.height/8);
  face02 = loadImage("face02.png");
  face02.resize(face02.width/8,face02.height/8);
  face03 = loadImage("face03.png");
  face03.resize(face03.width/8,face03.height/8);
  face04 = loadImage("face04.png");
  face04.resize(face04.width/8,face04.height/8);
  face=face01;
  food = loadImage("food.jpg");
  sleep= loadImage("sleep.jpg");
  sleep_p=new PVector(450,800);
  ellipseMode(CENTER);
}

void draw(){
  mouse_p=new PVector(mouseX,mouseY);
  imageMode(CENTER);
  background(255);
  image(food,100,100,width/20,height/20);
  image(food,800,800,width/20,height/20);
  image(food,100,800,width/20,height/20);
  image(food,800,100,width/20,height/20);
  image(sleep,450,800,width/20,height/20);
  if (creature_p.dist(mouse_p)>150){
    face=face04;
    image(face,creature_p.x,creature_p.y);
  }
  else if (creature_p.dist(mouse_p)<50){
    creature_p=new PVector(random(width),random(height));
    image(face,creature_p.x,creature_p.y);
  }
  else {
    face=face01;
    image(face,creature_p.x,creature_p.y);
  }
  if (creature_p.dist(food_p1)<200){
    face=face03;
    image(face,creature_p.x,creature_p.y);
    face=face01;
    image(face,creature_p.x,creature_p.y);
  }
  else if (creature_p.dist(food_p2)<200){
    face=face03;
    image(face,creature_p.x,creature_p.y);
  }
  else if (creature_p.dist(food_p3)<200){
    face=face03;
    image(face,creature_p.x,creature_p.y);
  }
  else if (creature_p.dist(food_p4)<200){
    face=face03;
    image(face,creature_p.x,creature_p.y);
  }
}
