import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Aarti_view extends StatelessWidget {
  Aarti_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffecb033),
              Color(0xffeb7530),
            ],
          ),
        ),
      ),
    );
  }
}
