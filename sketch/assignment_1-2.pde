void setup() {
  size(1280, 720);
  background(255);
  stroke(0);
  strokeWeight(0.7);

  float cx = width / 2.0;
  float cy = height / 2.0;

  // 1. 左下の青い四角形（グラデーション）
  pushMatrix();
  translate(cx, cy);
  rotate(radians(20));
  fill(90, 195, 245, 200);
  drawGradientRect(
    -200,
    0,
    400,
    270,
    color(90, 195, 245, 0),
    color(90, 195, 245, 255),
    "vertical",
    true
  );
  popMatrix();

  // 2. 中央の水色の三角形
  pushMatrix();
  translate(cx, cy);
  fill(90, 195, 245, 100);
  float[] p1 = {0, -150};
  float[] p2 = {-223, 30};
  float[] p3 = {190, 30};
  triangle(p1[0], p1[1], p2[0], p2[1], p3[0], p3[1]);
  popMatrix();

  // 3. 右上の白い四角形
  pushMatrix();
  translate(cx, cy);
  rotate(radians(-20));
  fill(255, 130);
  rectMode(CENTER);
  rect(80, -60, 380, 380);
  popMatrix();
}

/**
 * グラデーション付きの矩形を描画
 */
void drawGradientRect(
  float x, float y, float w, float h,
  color fromColor, color toColor,
  String direction,
  boolean outline
) {
  pushMatrix();
  rectMode(CORNER);

  if (!direction.equals("horizontal") && !direction.equals("vertical")) {
    direction = "vertical";
  }

  if (!outline) noStroke();

  if (direction.equals("horizontal")) {
    for (int i = 0; i < w; i++) {
      float amt = i / w;
      color c = lerpColor(fromColor, toColor, amt);
      stroke(c);
      line(x + i, y, x + i, y + h);
    }
  } else {
    for (int i = 0; i < h; i++) {
      float amt = i / h;
      color c = lerpColor(fromColor, toColor, amt);
      stroke(c);
      line(x, y + i, x + w, y + i);
    }
  }

  if (outline) {
    stroke(0);
    noFill();
    rect(x, y, w - 1, h - 1);
  }

  popMatrix();
}
