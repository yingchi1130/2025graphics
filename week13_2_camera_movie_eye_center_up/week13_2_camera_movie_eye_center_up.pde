//week13_2_camera_movie_eye_center_up
//電腦圖學繪圖時,會設定camera的相關係數
import processing.video.*;  //要使用影片的外掛
Movie movie; //放影片的變數
void setup(){
  size(720, 480, P3D); //要記得加上P3D才能有OpenGL 3D的功能
  movie = new Movie(this, "street.mov"); //請再把street.mov 拉進來
  movie.loop(); //迴圈撥放 影片的解析度720x480
}
void draw(){
  background(128);
  //https://processing.org/reference/camera_.html
  camera(mouseX, mouseY, 500, 360, 240, 0, 0, 1, 0);
  //很多參數 eyeX eyeY eyeZ centerX centerY centerZ upX upY upZ
  //                        影片的中心點,當主角
  
  if(movie.available()) movie.read(); //有新畫面就讀入
  image(movie, 0, 0); //放影片 放在0,0
}
