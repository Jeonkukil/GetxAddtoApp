import 'package:addto/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {

  // 이 데이터를 UI에 바인드해야함
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }


  // 통신을 한다고 가정하고 고의로 넣은 Duration
  void fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    var productData = [
      Product(
          id: 1,
          productName: '마우스',
          productDescription: 'some description about product',
          price: 20
      ),
      Product(
          id: 2,
          productName: '키보드',
          productDescription: 'some description about product',
          price: 30
      ),
      Product(
          id: 3,
          productName: '모니터',
          productDescription: 'some description about product',
          price: 50
      ),
      Product(
          id: 4,
          productName: 'CPU',
          productDescription: 'some description about product',
          price: 55
      ),
      Product(
          id: 5,
          productName: '닌텐도 스위치',
          productDescription: 'some description about product',
          price: 80
      ),
    ];

    products.assignAll(productData);
  }
}