int w = 4;
int k = 0;
int temp= 0;
boolean go = false;
int[] a = new int[200];
void setup() {
  size(800, 600);
  background(255);
  frameRate(10);
  
  crearArrayRandom();
  
}

void draw() {
  pintarArray();
  if(go){
  bubbleSort();
  }
}

void crearArrayRandom(){
  for (int i=0; i < a.length; i++) {
    a[i] = (int) random(height);
    print(a[i]+", ");
  }
}
void pintarArray() {
  background(255);
  for (int i = 0; i < a.length; i++) {
    fill(247, 191, 190);
    stroke(0);
    rect(i*w, 0, w, a[i]);
  }
}

void bubbleSort() {
  if (k < a.length) {
    for (int j = 0; j < a.length -k-1; j++) {
      if (a[j] < a[j+1]) {
        temp = a[j];
        a[j] = a[j+1];
        a[j+1] = temp;
      }
    }
  }
}

void keyPressed() {
  if (key == ENTER) {
    go = true;
  }
  else{
    go = false;
  }
}
