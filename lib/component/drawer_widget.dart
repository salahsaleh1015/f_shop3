import 'package:f_shop/view/explore.dart';
import 'package:f_shop/view/flowers.dart';
import 'package:f_shop/view/vapes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 15,);
    final double screenHeight = MediaQuery.of(context).size.height;
    return Drawer(

      child: Material(
        color: Colors.white,
        child: ListView(
          padding: padding,
          children: [
            Container(
              height: screenHeight*.3,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.asset("images/Ellipse 3.png"),
                    ),
                    Text("dukauwa.du@gmail.com")
                  ],
                ),
              ),
            ),
         buildItem(
           color: Colors.grey,
              text:"Explore",
              icon:Icons.star,
           onClicked:()=> selectedItem(context , 0),
            ),
            buildItem(
              color: Colors.grey,
              text:"vapes",
              icon:Icons.star,
              onClicked:()=> selectedItem(context , 1),
            ),
            buildItem(
              color: Colors.grey,
              text:"Flowers",
              icon:Icons.star,
              onClicked:()=> selectedItem(context , 2),
            ),
        SizedBox(height: screenHeight*.2,),
            buildItem(
              color: Colors.red,
              text:"Log Out",
              icon:Icons.star,
              onClicked:()=> selectedItem(context , 3),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem({required String text,required IconData icon,required VoidCallback onClicked,required  Color color}) {
    return ListTile(
      title: Text(text,style: TextStyle(color:color),),
      leading: Icon(icon),
      onTap: onClicked,
    );
  }

void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch(index){
      case 0 : Get.to(Explore());
      break;
      case 1 : Get.to(Vapes());
      break;
      case 2 : Get.to(Flowers());
      break;
      case 3 : Get.to(Explore());
      break;
    }
 }
}
