import 'package:ecommerce_bloc/core/static/cat_list.dart';
import 'package:ecommerce_bloc/core/static/product_list.dart';
import 'package:ecommerce_bloc/feature/presentation/widgets/my_cat_list.dart';
import 'package:ecommerce_bloc/feature/presentation/widgets/my_circle_notification.dart';
import 'package:ecommerce_bloc/feature/presentation/widgets/my_grid_container.dart';
import 'package:flutter/material.dart';

class HomeScrenn extends StatelessWidget {
  const HomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce APP'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Badge(
              padding: EdgeInsets.all(4),
              backgroundColor: Colors.deepOrange,
              label: Text('4'),
              child: MyCircleNotification(
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: CatList.catList.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return MyCatList(
                        title: 'All',
                        bgColor: Colors.deepOrange,
                        txtColor: Colors.white,
                      );
                    }
                    final category = CatList.catList[index - 1];
                    return MyCatList(
                      title: category.title,
                      bgColor: Colors.grey.shade200,
                      txtColor: Colors.grey.shade700,
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 230,
                ),
                itemCount: ProductList.productList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final product = ProductList.productList[index];
                  return Stack(
                    children: [
                      MyGridContainer(
                        imgUrl: product.imgUrl,
                        title: product.title,
                        price: product.price.toString(),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: MyCircleNotification(
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
