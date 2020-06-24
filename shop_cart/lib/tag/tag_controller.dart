
import 'base_tag.dart';

abstract class TagController{
    BaseTag tag;
    TagController(this.tag);
    static List<BaseTag> toTags (List<Map<String,dynamic>> jsonObjects){
      
    }

}