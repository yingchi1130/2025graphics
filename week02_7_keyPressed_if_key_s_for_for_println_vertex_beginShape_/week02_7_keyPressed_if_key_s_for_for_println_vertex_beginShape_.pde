//week02_7_keyPressed_if_key_s_for_for_println_vertex_beginShape_endSghape
//想要有很多段, 不要「一筆畫」 一直接著畫
ArrayList<Integer> x, y; //先有2個還沒準備好的資料結構
ArrayList<ArrayList<Integer>> xx =  new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy =  new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
   size(400, 400);
   img = loadImage("cute.png"); //每次新的檔案, 要把圖「拉進來」
}//記得把圖檔,(像上次一樣)拉到程式裡
void draw(){
  background(img);
  fill(255, 200); //半透明的色彩 白色, alpha值是128
  rect(0, 0, 400, 400); //畫超大的四邊形，全部蓋住
  // 上面是week02_4, 下面用迴圈, 從資料結構取出來
  for(int I=0; I<xx.size(); I++){
    ArrayList<Integer> x = xx.get(I);
    ArrayList<Integer> y = yy.get(I);
    for(int i=1; i<x.size(); i++){
       line(x.get(i), y.get(i), x.get(i-1), y.get(i-1)); 
    }
  }
}
void keyPressed(){ // 小心,注音數入法會卡住按鍵 要換英文輸入法
  if(key=='s' || key=='S'){ //如果按下英文的小寫 或 大寫 s 想 save 存檔的話
    for(int I=0; I<xx.size(); I++){ //大寫I 對應大的資料結構
      ArrayList<Integer> x = xx.get(I); // 取出裡面的小的資料結構
      ArrayList<Integer> y = yy.get(I);
      println("beginShape();"); //beginShape
      for(int i=1; i<x.size(); i++){ // 小的，再照舊畫
        println("vertx(" + x.get(i) + "," + y.get(i) + ");" ); 
      } //改再 keyPressed() 按下s 或Ｓ 時 再印全部!
      println("endShape();");
    }
  }
}
void mouseDragged(){
  //println("vertex(mouseX, mouseY);");
  //println("vertex(" + mouseX + ","+ mouseY + ");"); 不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){  //滑鼠按下去時,建「新的」資料結構
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
