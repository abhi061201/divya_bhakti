import 'dart:async';

import 'package:divya_bhakti/app/Route/customRoute.dart';
import 'package:divya_bhakti/app/modules/global/audioplayers.dart';
import 'package:divya_bhakti/app/modules/home/view/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    Audio_player audiocontroller = Audio_player();
    audiocontroller.refresh();
    audiocontroller.playInLoop(audioLocation: 'audio/1234.mp3');
    // try {
    //   audiocontroller.playAudiofromInternet(
    //       audioUrl:
    //           'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/y2mate.is%20-%20%E0%A4%B6%20%E0%A4%B2%E0%A4%AA%20%E0%A4%A4%20%E0%A4%B0%20%E0%A4%AE%20%E0%A4%A4%20%E0%A4%86%E0%A4%B0%E0%A4%A4%20Maa%20Shailputri%20Ki%20Aarti%20by%20Anuradha%20Paudwal%20%E0%A4%A8%E0%A4%B5%E0%A4%B0%20%E0%A4%A4%20%E0%A4%B0%20%E0%A4%AA%E0%A4%B9%E0%A4%B2%20%E0%A4%A6%20%E0%A4%A8%20%E0%A4%95%20%E0%A4%86%E0%A4%B0%E0%A4%A4%20-fmbPdCGf5mw-192k-1695046484.mp3?alt=media&token=f5c567c3-4465-44aa-83ff-ebe74adac49c');
    // } catch (e) {
    //   print(e.toString());
    // }
    Timer(Duration(seconds: 3), () {
      Get.off(HomeView(
        // audiocontroller: audiocontroller,
      ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/24368866.jpg',
            ),
            fit: BoxFit.fill),
      ),
      child: Image(image: AssetImage('assets/images/om.png')),
    ));
  }
}
