class Arrow {

PShape arrowShape;

public Arrow(int i) {
  arrowShape = makeArrow(i); 
  setFS();
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

void setFS(){
 this.setFill(220);
 this.setStroke(235);
}

void tempSet(){
  this.setFill(0);
  this.translate(0,600);
}

}