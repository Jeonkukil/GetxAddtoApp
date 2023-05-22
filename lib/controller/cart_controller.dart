import 'package:addto/model/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {

  var cartItems = <Product>[].obs;

  // price의 합을 구하는 코드 문제는 아래의 코드처럼 사용하면 오류가 발생한다. cartItems는 초기화 시커서 사용해야함 따라서 getter를 만들어 주면된다.
  // double totalPrice = cartItems.fold(0, (e, item) => e + item.price);

  //get을 적용시킨 코드
  double get totalPrice => cartItems.fold(0, (e, item) => e + item.price);

  int get count => cartItems.length;

  void addToItem(Product product) {
    cartItems.add(product);

  }
}