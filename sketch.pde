float y4=0,
y5=0,y6=0;
float[] x0 = new float[200];
float[] y0 = new float[200];
float[] x1 = new float[200];
float[] y1 = new float[200];
float[] x3 = new float[200];
float[] y3 = new float[200];

float[] x00 = new float[200];
float[] y00 = new float[200];
float[] x11 = new float[200];
float[] y11 = new float[200];
float[] x33 = new float[200];
float[] y33 = new float[200];

float[] x000 = new float[200];
float[] y000= new float[200];
float[] x111 = new float[200];
float[] y111 = new float[200];
float[] x333 = new float[200];
float[] y333 = new float[200];

float[] x0000 = new float[200];
float[] y0000 = new float[200];
float[] x1111 = new float[200];
float[] y1111 = new float[200];
float[] x3333 = new float[200];
float[] y3333 = new float[200];
PImage img;
int time1 = 28000;
int time2=14000;
int time3=55000;
float x2 = 0;
Float speed=3.5;

void setup() {
size(1023, 682);
img = loadImage("visore-gas-systems-732-new.jpg");
smooth();
noStroke();
for (int i = 0; i < x0.length; i++) {
x0[i] = random(115, 140);
y0[i]=random(height,height+1400);
}
for (int i = 0; i < x1.length; i++) {
x1[i] = random(415, 440);
y1[i]=random(height,height+1400);
}
for (int i = 0; i < x3.length; i++) {
x3[i] = random(715, 740);
y3[i]=random(height,height+1400);
}

for (int i = 0; i < x00.length; i++) {
x00[i] = random(115, 140);
y00[i]=random(height,height+1400);
}
for (int i = 0; i < x11.length; i++) {
x11[i] = random(415, 440);
y11[i]=random(height,height+1400);
}
for (int i = 0; i < x33.length; i++) {
x33[i] = random(715, 740);
y33[i]=random(height,height+1400);
}

for (int i = 0; i < x000.length; i++) {
x000[i] = random(115, 140);
y000[i]=random(height,height+1400);
}
for (int i = 0; i < x111.length; i++) {
x111[i] = random(415, 440);
y111[i]=random(height,height+1400);
}
for (int i = 0; i < x333.length; i++) {
x333[i] = random(715, 740);
y333[i]=random(height,height+1400);
}

for (int i = 0; i < x0000.length; i++) {
x0000[i] = random(115, 140);
y0000[i]=random(-1400,0);
}
for (int i = 0; i < x1111.length; i++) {
x1111[i] = random(415, 440);
y1111[i]=random(-1400,0);
}
for (int i = 0; i < x3333.length; i++) {
x3333[i] = random(715, 740);
y3333[i]=random(-1400,0);
}
}

void draw() {
int currentTime = millis();  
background(153,219,215);
int timer = millis();
println(timer);
image(img, 0, 0,width,height);
fill(0);
if (mousePressed) {
rect(400,y5-3*height,10,3*height);
rect(450,y5-3*height,10,3*height);
y5+=speed;
rect(100,y4-3*height,10,3*height);
rect(150,y4-3*height,10,3*height);
y4+=speed;

rect(700,y6-3*height,10,3*height);
rect(750,y6-3*height,10,3*height);
y6+=speed;
} else {
rect(400,y5-3*height,10,3*height);
rect(450,y5-3*height,10,3*height);
y5+=0;
rect(100,y4-3*height,10,3*height);
rect(150,y4-3*height,10,3*height);
y4+=0;

rect(700,y6-3*height,10,3*height);
rect(750,y6-3*height,10,3*height);
y6+=0;
}
if (keyPressed) {
if ((key == 'a') || (key == 'A')) {
for (int i = 0; i < x0.length; i++) {
y0[i] -= 5.5;
fill(0);
ellipse(x0[i], y0[i], 12, 12);
}
for (int i = 0; i < x1.length; i++) {
y1[i] -= 5.5;
fill(0);
ellipse(x1[i], y1[i], 12, 12);
}
for (int i = 0; i < x3.length; i++) {
y3[i] -= 5.5;
fill(0);
ellipse(x3[i], y3[i], 12, 12);
}
}
if ((key == 'd') || (key == 'D')) {
for (int i = 0; i < x00.length; i++) {
y00[i] -= 5.5;
fill(240,234,44);
ellipse(x00[i], y00[i], 12, 12);
}
for (int i = 0; i < x11.length; i++) {
y11[i] -= 5.5;
fill(240,234,44);
ellipse(x11[i], y11[i], 12, 12);
}
for (int i = 0; i < x33.length; i++) {
y33[i] -= 5.5;
fill(240,234,44);
ellipse(x33[i], y33[i], 12, 12);
}
}
if ((key == 'w') || (key == 'W')) {
for (int i = 0; i < x000.length; i++) {
y000[i] -= 5.5;
fill(173,84,33);
ellipse(x000[i], y000[i], 12, 12);
}
for (int i = 0; i < x111.length; i++) {
y111[i] -= 5.5;
fill(173,84,33);
ellipse(x111[i], y111[i], 12, 12);
}
for (int i = 0; i < x333.length; i++) {
y333[i] -= 5.5;
fill(173,84,33);
ellipse(x333[i], y333[i], 12, 12);
}
}
if ((key == 's') || (key == 'S')) {
for (int i = 0; i < x0000.length; i++) {
y0000[i] += 5.5;
fill(53,219,215);
ellipse(x0000[i], y0000[i], 12, 12);
}
for (int i = 0; i < x1111.length; i++) {
y1111[i] += 5.5;
fill(53,219,215);
ellipse(x1111[i],y1111[i], 12, 12);
}
for (int i = 0; i < x3333.length; i++) {
y3333[i] += 5.5;
fill(53,219,215);
ellipse(x3333[i],y3333[i], 12, 12);
}
}
}
}
