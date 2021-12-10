

import 'package:f_shop/view/home_page.dart';
import 'package:f_shop/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class GoogleAuthPage extends GetWidget<AuthViewModel> {
  const GoogleAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/Rectangle 22.png"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: screenHeight * .12,
                  width: screenWidth * .2,
                  child: Image.asset(
                    "images/logo.png",
                  )),
              Text(
                "Stay Happy.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * .110,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                "Stay High",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * .110,
                    fontWeight: FontWeight.w300),
              ),
              Text(" Always",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * .110,
                      fontWeight: FontWeight.w300)),
              SizedBox(
                height: 30,
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                GestureDetector(
                  onTap: (){
                    Get.off(HomePage());
                  },
                  child: Container(
                    height: screenHeight*.07,
                    width: screenWidth*0.350,
                    child: Center(child: Text("Join",style: TextStyle(color: Colors.green,fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.off(HomePage());
                  },
                  child: Container(
                    height: screenHeight*.07,
                    width: screenWidth*0.350,
                    child: Center(child: Text("Join In",style: TextStyle(color: Colors.white,fontSize: 20),)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                )
              ],),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(width: 45,),
                  TextButton(
                    onPressed: () {
                      controller.googleSignInMethod();
                    },
                    child: Row(
                      children: [
                        Image.asset("images/google logo.png"),
                        SizedBox(width: 5,),
                        Text(
                          "Continue with google",
                          style: TextStyle(color: Colors.white,fontSize: 21),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
