
class Circle {
  float x , y;
  color c;
  float r ,b;
  Random generator;
  Circle(){
    r = 0;
    b = 1000000;
    generator = new Random();
  }
  
  void show(){
    float num = (float) generator.nextGaussian();
    float num2 = (float) generator.nextGaussian();
    x = 100 * num +  width / 2;
    y = 50 * num2 + height / 2;
    int red = (int)map(noise(r) , 0 , 1 , 0 , 255);
    int blue = (int)map(noise(b) , 0 , 1 , 0 , 255);
    c = color(red , blue , 0);
    r += 0.01;
    b += 0.01;
    fill(c);
    ellipse(x , y , 10 , 10);
  }
}
