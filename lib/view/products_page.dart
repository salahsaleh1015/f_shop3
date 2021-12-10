import 'package:f_shop/component/drawer_widget.dart';
import 'package:f_shop/customs/custom_color.dart';
import 'package:f_shop/view/product_details_page.dart';
import 'package:f_shop/view_model/product_view_model.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsPage extends GetWidget<ProductViewModel> {


  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.grey)),
        child: DefaultTabController(
            length: 5,
            child: GetBuilder<ProductViewModel>(
              builder: (controller) =>controller.loading.value?CircularProgressIndicator(
                backgroundColor: Colors.white,

              ) :Scaffold(
                drawer: DrawerWidget(),
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Container(
                        child: Image.asset(
                      "images/logo horozontal.png",
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
                  bottom: TabBar(
                    indicatorColor: primaryColor,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text(
                          "Flowers",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "vapes",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Extracts",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Edibles",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Accessories",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    buildPage(),
                    buildPage(),
                    buildPage(),
                    buildPage(),
                    buildPage(),
                  ],
                ),
              ),
            )));
  }

  Widget buildPage() {
    return GetBuilder<ProductViewModel>(
      builder: (controller)=>
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView.builder(
            itemCount: controller.productModel.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () => Get.to(ProductDetailsPage()),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .11,
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          leading: Container(
                            width: 90,
                            height: 90,
                            child: Image.network(controller.productModel[index].image),
                          ),
                          title: Column(
                            children: [
                              Text(
                                controller.productModel[index].name,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
              controller.productModel[index].title,
                                style:
                                    TextStyle(color: Colors.black, fontSize: 20),
                              ),
                              Text(
              controller.productModel[index].price.toString(),
                                style:
                                    TextStyle(color: primaryColor, fontSize: 10),
                              )
                            ],
                          ),
                          trailing: GestureDetector(
                            onTap: () {},
                            child: Container(
                              color: primaryColor,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
