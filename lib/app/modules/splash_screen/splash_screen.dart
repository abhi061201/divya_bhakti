import 'dart:async';

import 'package:divya_bhakti/app/Route/customRoute.dart';
import 'package:divya_bhakti/app/global/audioplayers.dart';
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
    // audiocontroller.playInLoop(audioLocation: 'audio/1234.mp3');
    try{
      audiocontroller.playAudiofromInternet(
        audioUrl: 'https://firebasestorage.googleapis.com/v0/b/divya-bhakti.appspot.com/o/Daku(PagalWorld.com.se).mp3?alt=media&token=78a68160-8308-46ef-a560-87d044fe881f');
    }
    catch(e)
    {
        print(e.toString());
    }
    Timer(Duration(seconds: 3), () {
      Get.off(HomeView(
        audiocontroller: audiocontroller,
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
