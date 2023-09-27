import 'dart:developer';

import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:divya_bhakti/app/modules/global/customBottomNavigationBar.dart';
import 'package:divya_bhakti/app/modules/global/global_button.dart';
import 'package:divya_bhakti/app/modules/japa%20count/controller/japaController.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class JapaView extends StatelessWidget {
  Japacontroller controller = Get.put(Japacontroller());
  JapaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/background 2.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        backgroundColor: Colors.transparent,
        body: Opacity(
          opacity: 0.8,
          child: Container(
            height: Get.height,
            width: Get.width,
            // margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              // color: Colors.red,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(251, 14, 2, 1),
                  Color(0xffC7451B),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Tuesday, Sept 25 ',
                            style: TextStyle(
                                color: appcolor.yellowColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications,
                              size: 20,
                              color: appcolor.yellowColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              size: 20,
                              color: appcolor.yellowColor,
                            ),
                          ),
                        ],
                      ),
                      // image container
                      //   Stack(
                      //     children: [
                      //       //background container
                      //       Container(
                      //         width: Get.width,
                      //         height: Get.height * 0.8,
                      //         decoration: BoxDecoration(
                      //           gradient: LinearGradient(
                      //             begin: Alignment(0.08, 1.588),
                      //             end: Alignment(-1.548, -1.726),
                      //             colors: <Color>[
                      //               Color(0xeffc9700),
                      //               Color(0xeff75d1a),
                      //               Color(0xeffd0101),
                      //               Color(0xeff7761a),
                      //               Color(0xefff630a),
                      //               Color(0xef242562),
                      //               Color(0xeff7351b),
                      //               Color(0xefff950c),
                      //               Color(0xeffc1005)
                      //             ],
                      //             stops: <double>[
                      //               0,
                      //               0.099,
                      //               0.82,
                      //               0.834,
                      //               1,
                      //               1,
                      //               1,
                      //               1,
                      //               1
                      //             ],
                      //           ),
                      //         ),
                      //         child: Column(
                      //           children: [
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ],
                      //
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                        width: double.infinity,
                        height: Get.height * 0.8,
                        child: Stack(
                          children: [
                            // main container
                            SizedBox(
                              width: Get.width,
                              height: Get.height * 0.85,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 227, 196, 41),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: Get.width * 0.08,
                                ),
                                Container(
                                  height: Get.height * 0.8,
                                  width: 2,
                                  color: Color(0xffbe1812),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: Get.height * 0.06,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Image(
                                          image: AssetImage(
                                            'assets/images/5-mukhi-rudraksh-japa-mala (1) 1.png',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Jai Mata Di',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.share_outlined,
                                          size: 20,
                                          color: appcolor.redlow,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Container(
                                  width: Get.width,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbe1812),
                                  ),
                                ),
                                // button container
                              ],
                            ),
                            Container(
                              height: Get.height * 0.8,
                              width: Get.width,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/image 1.png',
                                ),
                              ),
                            ),

                            // button container
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: Get.width * 0.1,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appcolor.redlow,
                                            border: Border.all(
                                              color: appcolor.yellowColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Obx(() {
                                                return Text(
                                                  '${controller.Japacounter.value}',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                );
                                              }),
                                              Text(
                                                'Counts',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          log('hii all');
                                          controller.increaseJapaCounter();
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 10),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appcolor.redlow,
                                            border: Border.all(
                                              color: appcolor.yellowColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'जय माता दी',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                            //
                            // Positioned(
                            //   left: 6,
                            //   top: 136,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 363,
                            //       height: 363,
                            //       child: Icon(Icons.abc),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line101Ub (28:752)
                            //   left: 5,
                            //   top: 56,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 2,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line12jvP (28:753)
                            //   left: 5,
                            //   top: 89,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line13f3M (28:754)
                            //   left: 6,
                            //   top: 123,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line14BnP (28:755)
                            //   left: 6,
                            //   top: 156,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line15iXR (28:756)
                            //   left: 3,
                            //   top: 190,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line16pqM (28:757)
                            //   left: 4,
                            //   top: 224,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line17MaP (28:758)
                            //   left: 4,
                            //   top: 257,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line185mH (28:759)
                            //   left: 8,
                            //   top: 291,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line19QHm (28:760)
                            //   left: 9,
                            //   top: 325,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line24guV (28:761)
                            //   left: 0,
                            //   top: 485,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line251Ry (28:762)
                            //   left: 1,
                            //   top: 519,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line26waX (28:763)
                            //   left: 1,
                            //   top: 552,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line275Aw (28:764)
                            //   left: 5,
                            //   top: 586,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line28z31 (28:765)
                            //   left: 6,
                            //   top: 620,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line20iDu (28:766)
                            //   left: 9,
                            //   top: 358,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line21Ei3 (28:767)
                            //   left: 6,
                            //   top: 392,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line22NJT (28:768)
                            //   left: 7,
                            //   top: 426,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line235yZ (28:769)
                            //   left: 7,
                            //   top: 459,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 1,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // line11DZy (28:770)
                            //   left: 5,
                            //   top: 655,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 365,
                            //       height: 2,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           color: Color(0xffbe1812),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // MRH (28:771)
                            //   left: 142,
                            //   top: 20,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 87,
                            //       height: 24,
                            //       child: Text(
                            //         'Jai Mata Di',
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // rectangle12eQP (28:772)
                            //   left: 35,
                            //   top: 657,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 74,
                            //       height: 40,
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(6),
                            //           border:
                            //               Border.all(color: Color(0xffffd604)),
                            //           color: Color(0xe5fc1005),
                            //           boxShadow: [
                            //             BoxShadow(
                            //               color: Color(0x3f000000),
                            //               offset: Offset(0, 4),
                            //               blurRadius: 2,
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // countsLHD (28:773)
                            //   left: 49,
                            //   top: 675,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 45,
                            //       height: 18,
                            //       child: Text(
                            //         'Counts',
                            //         textAlign: TextAlign.center,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // qDy (28:774)
                            //   left: 62,
                            //   top: 660,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 16,
                            //       height: 18,
                            //       child: Text(
                            //         '10',
                            //         textAlign: TextAlign.center,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // jaimatadi8is (28:775)
                            //   left: 271,
                            //   top: 667,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 73,
                            //       height: 21,
                            //       child: Text(
                            //         'Jai Mata Di',
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // vectorqdH (28:776)
                            //   left: 317,
                            //   top: 20,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 21.88,
                            //       height: 21.88,
                            //       child: Icon(Icons.abc),
                            //     ),
                            //   ),
                            // ),
                            // Positioned(
                            //   // mukhirudrakshjapamala11jyZ (28:777)
                            //   left: 39,
                            //   top: 10,
                            //   child: Align(
                            //     child: SizedBox(
                            //       width: 64,
                            //       height: 46,
                            //       child: Icon(Icons.abc),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ]).paddingSymmetric(
                  horizontal: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget textfield({
  String? hintText,
  TextEditingController? controller,
  TextInputType? keyboardType,
  bool? showPassword,
  IconData? iconData,
  int? keyLength,
}) {
  return Container(
    width: Get.width * 0.75,
    child: Row(
      children: [
        Expanded(
          child: TextFormField(
            keyboardType: keyboardType,
            style: TextStyle(
              color: Colors.white,
            ),
            maxLength: keyLength,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              // counterStyle: TextStyle(color: Colors.white),
              counter: Offstage(),
              hintText: '${hintText}',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
            ),
          ),
        ),
        // Icon(iconData,),
      ],
    ),
  );
}

Widget button({
  String? title,
  IconData? icondata,
  Callback? callback,
  Color? iconcolor,
}) {
  return InkWell(
    onTap: callback,
    child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0xffFFD600),
        borderRadius: BorderRadius.circular(6),
      ),
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icondata,
            color: iconcolor,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$title',
            style: TextStyle(color: Colors.black),
          )
        ],
      ).paddingSymmetric(
        vertical: 5,
        horizontal: 10,
      ),
    ),
  );
}

Widget rowwidget({String? title, String? count, Callback? callback}) {
  return InkWell(
    onTap: callback,
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: appcolor.redlow,
        border: Border.all(
          color: appcolor.yellowColor,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${count}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '${title}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
