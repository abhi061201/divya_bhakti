import 'dart:developer';

import 'package:get/get.dart';

class Japacontroller extends GetxController{

  RxInt Japacounter=0.obs;
  void increaseJapaCounter()
  {
    print('hii');
    Japacounter.value++;
    log(Japacounter.value.toString());
  }
}