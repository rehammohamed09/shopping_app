import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:untitled9/productsModel.dart';

class Apiprovider {
  ProductsModel? productsModel;
  ProductsModel? productsByCategory;
  static const String baseUrl = "https://dummyjson.com";
  String? token;

  Future<ProductsModel?> getProducts() async {
    try {
      Response response = await Dio().get("https://dummyjson.com/products",
          queryParameters: {
            "select": "id,title,description,category,price,thumbnail",

          },
         );
      productsModel = ProductsModel.fromJson(response.data);
      //print(productsModel?.products![0].title);
      return productsModel;
    } catch (e) {
      print(e);
    }
  }

  Future<ProductsModel?> fetchItemsByCategory(String categoryName) async {
    try {
      Response response = await Dio().get(
        '$baseUrl/products/category/$categoryName',  queryParameters: {
        "select": "id,title,description,category,price,thumbnail",}
      );
      productsByCategory = ProductsModel.fromJson(response.data);
      print(productsByCategory?.products?[0].title);


      return productsByCategory;
    } catch (e) {
      print(e);

    }
  }
}
