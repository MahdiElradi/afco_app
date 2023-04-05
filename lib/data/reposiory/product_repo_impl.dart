// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:tut_app/app/constants.dart';
// import 'package:tut_app/data/model/product.dart';
//
// import '../../domain/repository/product_repo.dart';
//
// class ProductRepoImpl implements ProductRepo {
//   @override
//   Future<List<Product>> getProducts() async {
//     final res = await http.get(Uri.parse("${Constants.url}photos"),
//         headers: {"Accept": "application/json"});
//     if (res.statusCode == 200) {
//       return Product.formList(jsonDecode(res.body));
//     }
//     return [];
//   }
// }
