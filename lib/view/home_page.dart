import 'package:f_shop/component/drawer_widget.dart';
import 'package:f_shop/customs/custom_color.dart';
import 'package:f_shop/view/products_page.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Theme(
        data: ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.grey)
        ),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Image.asset(
                "images/logo horozontal.png",
                color: primaryColor,
              )),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                ),
              ),
              CircleAvatar(
                radius: 23,
                child: Image.asset("images/Ellipse 3.png"),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: Container(
                  height: screenHeight * .53,
                  width: screenWidth,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/Group.png"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "50% Off",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Everything",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "with code: sativa 123",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("images/Group 58.png"),
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "Mark the occassion with these must have ",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Text(
                    "products",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/Group 62.png")),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: screenHeight * .12,
                        width: screenWidth * .21,
                      ),
                      Text("Vapes"),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(ProductsPage());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/Group 63.png")),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: screenHeight * .12,
                          width: screenWidth * .21,
                        ),
                      ),
                      Text("Flowers"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/Group 64.png")),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: screenHeight * .12,
                        width: screenWidth * .21,
                      ),
                      Text("Edibles"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
                indent: 90,
                endIndent: 90,
              )
            ],
          ),
    drawer: DrawerWidget(),
        ),
      ),
    );
  }
}
