import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService {
  final  CollectionReference _productCollectionReference = FirebaseFirestore.instance.collection('products');
  Future<List<QueryDocumentSnapshot>>getProduct()async{
  var value = await  _productCollectionReference.get();
  return value.docs;

  }

}