import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:divya_bhakti/app/modules/auth/login/controller/login_controller.dart';
import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class login_view extends StatelessWidget {
  login_view({super.key});
  loginController controller = loginController();
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
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Opacity(
            opacity: 0.8,
            child: Container(
              height: Get.height,
              width: Get.width,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(251, 14, 2, 1),
                    Color(0xffC7451B),
                  ],
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: Get.height * 0.18,
                    ),
                    Container(
                      // width: Get.width * 0.4,
                      height: Get.height * 0.13,
                      child: Image(
                        image: AssetImage(
                          'assets/images/mata.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    textfield(
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.emailController),
                    textfield(
                        hintText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        controller: controller.password_controller),
                    SizedBox(
                      height: 10,
                    ),
                    
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() => controller.show_Circle == false
                                ? InkWell(
                                    onTap: () {
                                      controller.FirebaseLogin();
                                    },
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
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                : CircularProgressIndicator(
                                    color: appcolor.yellowColor,
                                  ))
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 30),
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Forgot Password?',
                                    style: TextStyle(
                                      decorationColor: Colors.yellow,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                  ),
                                ]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        button(
                            title: 'Continue with Facebook',
                            icondata: FontAwesomeIcons.facebook,
                            iconcolor: Color(0xff3121E5),
                            callback: () {}),
                        button(
                          title: 'Sign in With Google',
                          iconcolor: Color(0xffFF0606),
                          icondata: FontAwesomeIcons.google,
                        )
                      ],
                    ).paddingOnly(left: 15, right: 15),
                    
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            children: [
                              TextSpan(text: 'Don\'t have any account? '),
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.yellow,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed(Routes.SIGNUP_VIEW);
                                  },
                              ),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ).paddingSymmetric(
                  horizontal: 5,
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
            controller: controller,
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
