import 'package:get/get.dart';

class MarkFavouriteController extends GetxController {
  RxList<String> itemList =
      ["Orange", "Mango", "Pineapple", "Guava", "Apple",].obs;
  RxList favoutireList = [].obs;

  addToFav(String value) {
    favoutireList.add(value);
  }

  removeFromFav(String value){
    favoutireList.remove(value);
  }
}
