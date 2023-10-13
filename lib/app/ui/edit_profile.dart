import 'dart:io';

import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:divya_bhakti/app/modules/global/customBottomNavigationBar.dart';
import 'package:divya_bhakti/app/modules/global/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class edit_profile_view extends StatelessWidget {
  edit_profile_view({super.key});
  ImagePickerController imagecontroller = Get.put(ImagePickerController());

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: Get.height * 0.1,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: appcolor.yellowColor,
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Obx(
                      () => InkWell(
                          onTap: () {
                            imagecontroller.getImagefromGallery();
                          },
                          child: imagecontroller.image_path.value == ''
                              ? CircleAvatar(
                                  radius: 40,
                                  child: Icon(
                                    Icons.person,
                                    size: 40,
                                  ),
                                  backgroundColor: Colors.grey,
                                )
                              : CircleAvatar(
                                  radius: 40,
                                  backgroundImage: FileImage(
                                    File(
                                      imagecontroller.image_path.value,
                                    ),
                                  ),
                                )),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    textfield(hintText: 'Profile Name'),
                    SizedBox(
                      height: 15,
                    ),
                    headingContainer(
                      'Date of Birth',
                      'DD/MM/YYYY',
                      inputType: TextInputType.datetime,
                    ),
                    Divider(
                        color: appcolor.yellowColor, thickness: 1, height: 0),
                    headingContainer(
                      'Time of Birth',
                      'HH:MM',
                      inputType: TextInputType.datetime,
                    ),
                    Divider(
                        color: appcolor.yellowColor, thickness: 1, height: 0),
                    headingContainer(
                      'Place of Birth',
                      'Add Location',
                      inputType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Color(
                            0xffD91309,
                          ),
                          border: Border.all(
                            color: Colors.yellow,
                          ),
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ).paddingSymmetric(
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

Widget headingContainer(String title, String suffixText,
    {TextInputType? inputType}) {
  return Container(
    // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
    // margin: EdgeInsets.symmetric(vertical: 10),
    width: Get.width,
    // height: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Color.fromARGB(255, 248, 56, 56),
    ),
    child: TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(
          suffix: Text(
            suffixText,
            style: TextStyle(
              color: appcolor.yellowColor,
            ),
          ),
          hintText: title,
          hintStyle: TextStyle(
            color: appcolor.yellowColor,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
          )),
      style: TextStyle(
        color: Color(0xffFFD704),
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
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
    // width: Get.width * 0.75,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Color(0xffFD0505),
    ),
    child: Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            style: TextStyle(
              color: appcolor.yellowColor,
            ),
            maxLength: keyLength,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              // counterStyle: TextStyle(color: Colors.white),
              counter: Offstage(),
              hintText: '${hintText}',
              hintStyle: TextStyle(
                color: appcolor.yellowColor,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
            ),
          ),
        ),
        // Icon(iconData,),
      ],
    ),
  );
}
