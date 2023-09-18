import 'package:divya_bhakti/app/global/audioplayers.dart';
import 'package:divya_bhakti/app/modules/Aarti/view/aarti_view.dart';
import 'package:divya_bhakti/app/modules/home/controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key, required this.audiocontroller});
  Audio_player audiocontroller;
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    // Audio_player audiocontroller = Get.put(Audio_player());
    return Container(
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
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Audio_player().pause();
          },
          child: Icon(
            Icons.pause,
          ),
        ),
        backgroundColor: Colors.transparent,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){
        //     audiocontroller.stop();
        //   },
        //   child: Icon(Icons.more_horiz),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * 0.5,
                decoration: BoxDecoration(
                  border: Border(),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        40,
                      ),
                      bottomRight: Radius.circular(
                        40,
                      )),
                  image: DecorationImage(
                    image: AssetImage('assets/images/maa alone.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  CustomWidget(
                    title: 'Naam Jap',
                    imageLocation: 'assets/images/naam jap.png',
                    callback: () {},
                  ),
                  CustomWidget(
                    title: 'Pooja Vidhi',
                    imageLocation: 'assets/images/pooja-vidhi_new.png',
                    callback: () {},
                  ),
                  CustomWidget(
                    title: 'Aarti',
                    imageLocation: 'assets/images/aarti.jpg',
                    callback: () {
                      Get.to(Aarti_view());
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomWidget(
      {String? title, Callback? callback, String? imageLocation}) {
    return InkWell(
      onTap: callback,
      child: Container(
        // height: Get.height*0.15,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.redAccent
              // top: BorderSide(
              //   color: Colors.redAccent,
              // ),
              // right: BorderSide(
              //   color: Colors.redAccent,
              // ),
              ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(
                4,
              ),
              bottomRight: Radius.circular(
                4,
              )),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: Get.height * 0.14,
              width: Get.width * 0.3,
              child: Image(
                image: AssetImage(
                  '${imageLocation}',
                ),
                fit: BoxFit.fill,
              ),
            ),
            Text(
              '${title}',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
