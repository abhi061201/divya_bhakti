import 'dart:developer';

import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  RxBool show_Circle = false.obs;
  Future<void> FirebaseLogin() async {
    String email= emailController.text.trim().toString();
    String password = password_controller.text.trim().toString();
    show_Circle.value = true;
    if (password.length < 6) {
      Get.snackbar('Error', 'Password should contain atleast 6 characters',
          snackPosition: SnackPosition.TOP);
      show_Circle.value = false;
    } else {
      FirebaseAuth userauth = await FirebaseAuth.instance;
     
      try {
        await userauth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((value) {
          Get.offAllNamed(Routes.HomeView);
        });
      } catch (e) {
        Get.snackbar(
          'Error',
          e.toString(),
          snackPosition: SnackPosition.TOP,
        );
      }
    }
  }

  bool check(String phone) {
    // log('hii');
    var char = phone[0];
    if (char == '6' || char == '7' || char == '8' || char == '9') {
      return false;
    }
    log(char);
    return true;
  }
}
