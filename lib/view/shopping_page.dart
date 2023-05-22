import 'package:addto/controller/shopping_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {

  ShoppingPage({Key? key}) : super(key: key);
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(12),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${controller.products[index].productName}",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text('${controller.products[index].productDescription}'),
                                  ],
                                ),
                                Text(
                                  "\$${controller.products[index].price}",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ],
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text('Add to cart'))
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Total amount',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
