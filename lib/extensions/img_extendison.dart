
extension ImagePath on String {

  toPng() => "lib/assets/img/$this.png";
  toJpeg() => "lib/assets/img/$this.jpeg";
}