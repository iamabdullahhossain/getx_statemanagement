import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerContriller extends GetxController{
RxString imagePath = "".obs;

Future getImage()async{

  final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  if(image != null){
    imagePath.value = image.path.toString();
  }

}



}