import 'package:f_shop/customs/custom_color.dart';
import 'package:f_shop/view/google_auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(backgroundColor: Colors.white12,radius: 60,child: Icon(Icons.card_travel_sharp,color: Colors.white,size: 50,),),
              Text("Payment successful", style: TextStyle(
                color: Colors.white,
                fontSize: 25,fontWeight: FontWeight.normal
              ),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("It is a long established fact that a reader will be  ",style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,

                ),),
                Text("distracted by the readable content of a page",style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,

                ),),
                Text(" when looking at its layout. The point of using",style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,

                ),),
                Text(" Lorem Ipsum is that it has a more-or-less normal",style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,

                ),),
                Text("distribution of letters",style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,

                ),),
              ],
            ),
             Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Get.offAll(GoogleAuthPage());
                  },
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),

                    ),
                    width: screenWidth,
                    height: screenHeight*.06,
                    child: Center(
                      child: Text("Create An Account",style: TextStyle(color: primaryColor,fontWeight: FontWeight.normal,fontSize: 25),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
