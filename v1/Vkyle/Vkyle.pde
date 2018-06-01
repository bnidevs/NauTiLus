import java.util.ArrayList;

Arrow right, left, up, down;
Arrow[] matchArrs;
ArrayList<String> moves;
ArrayList<Arrow> moveArrs;
int ctr;

void setup(){
  size(700,500);
  background(255);
  frameRate(60);
  ctrSetup();
  moveSetup();
  arrowSetup();
  arrowDraw();
}

void draw(){
  background(255);
  arrowDraw();
  arrMove();
  if(moves.size() > 0){
    checkMove();
  }
  count();
  if(ctr == 0){
    addMove();
  }
}

void ctrSetup(){
  ctr = 0;
}

void moveSetup(){
  moves = new ArrayList<String>();
  moveArrs = new ArrayList<Arrow>();
}

PShape makeArrow(int i){
  PShape rtrnShape = createShape();
  if(i == 0){
    rtrnShape.beginShape();
    rtrnShape.strokeWeight(2);
    rtrnShape.vertex(10,30);
    rtrnShape.vertex(30,10);
    rtrnShape.vertex(35,15);
    rtrnShape.vertex(25,25);
    rtrnShape.vertex(50,25);
    rtrnShape.vertex(55,30);
    rtrnShape.vertex(50,35);
    rtrnShape.vertex(25,35);
    rtrnShape.vertex(35,45);
    rtrnShape.vertex(30,50);
    rtrnShape.vertex(10,30);
    rtrnShape.endShape();
  }else if(i == 1){
    rtrnShape.beginShape();
    rtrnShape.strokeWeight(2);
    rtrnShape.vertex(210,30);
    rtrnShape.vertex(190,10);
    rtrnShape.vertex(185,15);
    rtrnShape.vertex(195,25);
    rtrnShape.vertex(170,25);
    rtrnShape.vertex(165,30);
    rtrnShape.vertex(170,35);
    rtrnShape.vertex(195,35);
    rtrnShape.vertex(185,45);
    rtrnShape.vertex(190,50);
    rtrnShape.vertex(210,30);
    rtrnShape.endShape();
  }else if(i == 2){
    rtrnShape.beginShape();
    rtrnShape.strokeWeight(2);
    rtrnShape.vertex(85,7);
    rtrnShape.vertex(65,27);
    rtrnShape.vertex(70,32);
    rtrnShape.vertex(80,22);
    rtrnShape.vertex(80,47);
    rtrnShape.vertex(85,52);
    rtrnShape.vertex(90,47);
    rtrnShape.vertex(90,22);
    rtrnShape.vertex(100,32);
    rtrnShape.vertex(105,27);
    rtrnShape.vertex(85,7);
    rtrnShape.endShape();
  }else{
    rtrnShape.beginShape();
    rtrnShape.strokeWeight(2);
    rtrnShape.vertex(135,52);
    rtrnShape.vertex(115,32);
    rtrnShape.vertex(120,27);
    rtrnShape.vertex(130,37);
    rtrnShape.vertex(130,12);
    rtrnShape.vertex(135,7);
    rtrnShape.vertex(140,12);
    rtrnShape.vertex(140,37);
    rtrnShape.vertex(150,27);
    rtrnShape.vertex(155,32);
    rtrnShape.vertex(135,52);
    rtrnShape.endShape();
  }
  return rtrnShape;
}

void arrowSetup(){
  matchArrs = new Arrow[4];
  
  //  ******************* RIGHT ARROW SETUP BEGIN *******************
  matchArrs[0] = new Arrow(0);
  //  ******************** RIGHT ARROW SETUP END ********************
  
  //  ******************* LEFT ARROW SETUP BEGIN ********************
  matchArrs[1] = new Arrow(1); 
  //  ******************** LEFT ARROW SETUP END *********************
  
  //  ********************* UP ARROW SETUP BEGIN ********************
  matchArrs[2] = new Arrow(2);
  //  ********************** UP ARROW SETUP END *********************
  
  //  ******************** DOWN ARROW SETUP BEGIN *******************
  matchArrs[3] = new Arrow(3);
  //  ********************* DOWN ARROW SETUP END ********************
}

void arrowDraw(){
  for(Arrow p : matchArrs){
    shape(p.arrowShape);
  }
  for(Arrow p : moveArrs){
    shape(p.arrowShape);
  }
}

void addMove(){
  double decision = Math.random();
  
  if(decision < 0.25){
    moves.add("w");
    Arrow temp = new Arrow(2);
    temp.tempSet();
    moveArrs.add(temp);
  }else if(decision < 0.5){
    moves.add("a");
    Arrow temp = new Arrow(0);
    temp.setFill(0);
    temp.translate(0,600);
    moveArrs.add(temp);
  }else if(decision < 0.75){
    moves.add("s");
    Arrow temp = new Arrow(3);
    temp.setFill(0);
    temp.translate(0,600);
    moveArrs.add(temp);
  }else{
    moves.add("d");
    Arrow temp = new Arrow(1);
    temp.setFill(0);
    temp.translate(0,600);
    moveArrs.add(temp);
  }
}

void removeMove(int pos){
  moves.remove(pos);
  moveArrs.remove(pos);
}

void keyPressed(){
  int pos = find(key + "", moves);
  if(pos != -1){
    removeMove(pos);
  }
}

void arrMove(){
  int len = moveArrs.size();
  for(int i = 0; i < len; i++){
    moveArrs.get(i).translate(0,-3);
  }
}

int find(String x, ArrayList<String> arr){
  int rtrnVal = 0;
  for(String s : arr){
    if(x.equals(s)){
      return rtrnVal;
    }else{
      rtrnVal++;
    }
  }
  
  return -1;
}

void count(){
  if(ctr == 60){
    ctr = 0;
  }else{
    ctr++;
  }
}

void checkMove(){
  if(moves.get(0) == "w"){
    if(moveArrs.get(0).getVertex(5).y < 0){
      removeMove(0);
    }
  }else if(moves.get(0) == "a"){
    if(moveArrs.get(0).getVertex(9).y < 0){
      removeMove(0);
    }
  }else if(moves.get(0) == "s"){
    if(moveArrs.get(0).getVertex(5).y < 0){
      removeMove(0);
    }
  }else{
    if(moveArrs.get(0).getVertex(0).y < 0){
      removeMove(0);
    }
  }
}