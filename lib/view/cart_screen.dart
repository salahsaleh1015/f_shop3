import 'package:f_shop/customs/custom_color.dart';
import 'package:f_shop/view/last_screen.dart';

import 'package:f_shop/view/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CartScreen extends StatelessWidget {

  List images = ["images/Rectangle 53.png","images/Rectangle 57.png","images/pp.png","images/iPhone.png","images/n.png"];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        title: Text("Your Page",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.normal),),

        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Get.off(ProductDetailsPage());
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 20,),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 5),
            child: Container(
              height: screenHeight*.7,
              child: ListView.builder(

                  itemCount: images.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Container(
                          height:MediaQuery.of(context).size.height*.11 ,
                          child: Card(

                            elevation: 5,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(

                              leading: Container(
                                width: 90,
                                height: 90,
                                child: Image.asset(images[index]),
                              ),
                              title: Column(
                                children: [
                                  Text("Pure sun farms",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  Text("Indica blend",style: TextStyle(color: Colors.black,fontSize: 20),),
                                  Text("\$20",style: TextStyle(color: primaryColor,fontSize: 10),)
                                ],
                              ),
                              trailing: Column(
                                children: [
                                  Container(

                                    width:20,
                                    height: 20,

                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Icon(

                                      Icons.add,color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  Text("01"),
                                  Container(

                                    width: 20,
                                    height: 20,

                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Icon(
                                        Icons.remove,color: Colors.white,
                                      size: 15,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    );

                  }),
            ),

          ),
          SizedBox(
            height: 10,
          ),
          Row(

            children: [
              SizedBox(
                width: 20,
              ),
              Text("ToTal: "),
              SizedBox(width: 4,),
              Text("\$20",style: TextStyle(
                color:primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Get.offAll(LastScreen());
              },
              child: Container(

                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(6),

                ),
                width: screenWidth,
                height: screenHeight*.06,
                child: Center(
                  child: Text("Create An Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 25),),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
