class ProductModel {
  ProductModel({required this.name,required this.title,required this.price,required this.image});
 late String name, title, image;
late  int price;
  ProductModel.fromJson(Map<dynamic,dynamic>map){
    if(map == null)
      return;
    name = map["name"];
   title = map["title"];
    price = map["price"];
   image = map["image"];
  }
  toJson(){
  return{
    "name" :name,
    "title" :title,
    "price" :price,
    "image" :image,

  };
  }

}

