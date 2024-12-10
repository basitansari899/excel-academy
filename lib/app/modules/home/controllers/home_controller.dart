import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isSelected = false.obs;

  setSelectedPlayer(){
    isSelected.value = !isSelected.value;
  }
}
