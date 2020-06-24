import 'base_image.dart';

abstract class ImageController{
  BaseImage image;
  ImageController(this.image);
  static List<BaseImage> toImages (List<Map<String, dynamic>> jsonObjects){

  }
}