import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final String id = "/HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(
              "Count is ${homeController.countProduct}",
              style: TextStyle(fontSize: 25),
            )),
      ),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Obx(
                () => ListView.builder(
                  itemCount: homeController.products.value.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
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
                                      '${homeController.products.value[index].productName}',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                        '${homeController.products.value[index].productDescription}'),
                                  ],
                                ),
                                Text(
                                    '\$${homeController.products.value[index].price}',
                                    style: TextStyle(fontSize: 24)),
                              ],
                            ),
                            RaisedButton(
                              onPressed: () {
                                // cartController.addToCart(
                                //     controller.products.value[index]);
                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text('Add to Cart'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ))),
    );
  }
}
