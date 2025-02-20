//week01_6_PImage_loadImage_background
//請先用小畫家 做出400x400的cute.png
//在從檔案總管理把 cute.png圖檔,拉到「程式裡」
PImage img = loadImage("cute.png");
size(400,400); //size()要與圖片大小相同
background(img); //才能在背景顯示
