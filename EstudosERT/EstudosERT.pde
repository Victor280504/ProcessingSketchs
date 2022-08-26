int tamX= width/10;
int tamY= height/10;

size(640, 640);
colorMode(HSB, 360, 100, 100);
noStroke();
//strokeWeight(20);
//for (int i=15; i>=0; i--) {
//  if (i%3==0)
//    fill(25, 60, 80);
//  else if (i%3==1)
//    fill(100, 80, 50);
//  else if (i%3==2)
//    fill(275, 50, 80);
//  //fill(i*40);
//  //rectMode(CENTER);
//  ellipse(300, 300, i*100, i*100);
//}
//for (int i=0; i<width; i++) {
//  for (int j=0; j<height; j++) {
//    strokeWeight(5);
//    stroke(20, 50, 100);
//    rectMode(CENTER);
//    fill(20, 20, 100);
//    rect(50*i+25, 50*j+25, 50, 50);
//    noStroke();
//    fill(120, 30, 80);
//    ellipse(50*i+25, 50*j+25, 50*0.9, 50*0.9);
//  }
//}
for (int i=0; i<width; i++) {
  for (int j=0; j<height; j++) {
    if (i%2==0 && j%2==0 ||i%2==1 && j%2==1 )
      fill(0);
    else fill(255);
    rect(80*i, 80*j, 80, 80);
  }
}
