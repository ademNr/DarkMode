

import 'package:get/get.dart';

class DarkModeController extends GetxController{
  RxBool darkMode = false.obs ; 
  
  

  changeDarkMode(bool status){
    this.darkMode.value = status ; 
  }
}