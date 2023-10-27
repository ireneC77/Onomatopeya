void gat(){
  text("^",0,20);
  text("^",20,20);
  text("·",5,30);
  text("·",15,30);
  text(">",0,35);
  text("<",20,35);
  push();
  translate(10,35);
  rotate(radians(90));
  text("o",-5,3);
  pop();
}
