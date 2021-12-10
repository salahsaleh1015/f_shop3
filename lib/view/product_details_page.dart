import 'package:f_shop/customs/custom_color.dart';
import 'package:f_shop/view/cart_screen.dart';
import 'package:f_shop/view/products_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon:Icon( Icons.arrow_back,),
         onPressed:(){
            Get.off(ProductsPage());
         } ,
          color: Colors.black,
         iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body:ListView(

        children: [
          Container(
            height: screenHeight * .5,
            width: screenWidth,
            child: Image.asset(
              "images/Rectangle 53.png",
              fit: BoxFit.cover,
            ),
          ),SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child:
               Container(
                height: screenHeight*.3,
                width: screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pure sun farms"),
                    Text("Indica blend",style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 25,
                    ),),
Row(
  children: [
    Text("THC",style: TextStyle(fontWeight: FontWeight.bold,),),
    Text("  12% "),
    Text(" CBD",style: TextStyle(fontWeight: FontWeight.bold,),),
    Text(" 12%"),
  ],
),

                    Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style:ElevatedButton.styleFrom(primary: primaryColor),
                      onPressed: (){}, child:Icon(
                      Icons.add,
                      color: Colors.white,
                    ),),
                    SizedBox(width: 5,),
                    Text("01",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    ElevatedButton(
                      style:ElevatedButton.styleFrom(primary: primaryColor),
                      onPressed: (){}, child:Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),),
                    Spacer(),
                    Text("%20"),
                    Text("/GRAM")
                  ],
                )

                  ],
                ),
              ),
            ),

          Divider(
            thickness: 3,
          ),
          Container(

            width: screenWidth,
            height: screenHeight*.1,
            child: Padding(
              child: Row(
                children: [
                  Text("ToTal: "),

                  Text("\$20",style: TextStyle(
                    color:primaryColor,
                    fontSize: 35,
                  ),),
                  Spacer(),
                  ElevatedButton(
                    style:ElevatedButton.styleFrom(primary: primaryColor),
                    onPressed: (){
                      Get.off(CartScreen());
                    },
                    child: Text("add to bag",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                  )
                ],
              ),
              padding:  EdgeInsets.symmetric(horizontal: 20)),

            ),

        ],
      ),
    );
  }
}
