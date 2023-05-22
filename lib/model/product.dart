// Model이 어떤 속성을 가지게 될 지 정해줘야함

class Product {
  final int id;
  final String productName;
  final String productDescription;
  final double price;

  Product({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.price,
});
}