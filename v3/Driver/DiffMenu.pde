PShape backArrowDiffMenu;
color arrColorDiffMenu, arrOutlineDiffMenu;

PShape ezButton, medButton, hrdButton;
PShape[] diffButtonArr;

void arrSetupDiffMenu(){
  arrColorDiffMenu = color(96,0,193);
  arrOutlineDiffMenu = color(218,14,237);
  
  backArrowDiffMenu = createShape();
  backArrowDiffMenu.beginShape();
  backArrowDiffMenu.strokeWeight(2);
  backArrowDiffMenu.vertex(10,30);
  backArrowDiffMenu.vertex(30,10);
  backArrowDiffMenu.vertex(35,15);
  backArrowDiffMenu.vertex(25,25);
  backArrowDiffMenu.vertex(50,25);
  backArrowDiffMenu.vertex(55,30);
  backArrowDiffMenu.vertex(50,35);
  backArrowDiffMenu.vertex(25,35);
  backArrowDiffMenu.vertex(35,45);
  backArrowDiffMenu.vertex(30,50);
  backArrowDiffMenu.vertex(10,30);
  backArrowDiffMenu.endShape();
}

void arrDrawDiffMenu(){
  if(mouseX > 10 && mouseX < 55 && mouseY > 10 && mouseY < 50){
    backArrowDiffMenu.setFill(arrOutlineDiffMenu);
    backArrowDiffMenu.setStroke(arrColorDiffMenu);
  }else{
    backArrowDiffMenu.setFill(arrColorDiffMenu);
    backArrowDiffMenu.setStroke(arrOutlineDiffMenu);
  }
  
  shape(backArrowDiffMenu);
}
