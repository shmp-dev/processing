void setup() {
  size(500, 500);
  background(255);
  stroke(0);
  noFill();
  
  // 大きな正方形
  rect(-10, 250, 260, 260);

  // 台形（回転あり）
  pushMatrix();
  translate(250, 188); // 回転中心（正方形の右上）
  rotate(radians(40));
  
  // 台形（上底が長く・下底が短い）
  beginShape();
  vertex(-32, -60); // 左上（長い辺）
  vertex(32, -60);  // 右上（長い辺）
  vertex(25, 60);   // 右下（短い辺）
  vertex(-25, 60);  // 左下（短い辺）
  endShape(CLOSE);
  popMatrix();

  // 楕円
  ellipse(266, 170, 74, 15);
}