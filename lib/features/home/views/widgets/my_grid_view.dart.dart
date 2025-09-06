import 'package:coffee_shop_app/features/home/views/widgets/product_card.dart';
import 'package:coffee_shop_app/models/product.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  final List<Product> products;
//  final Product product;
  const MyGridView({super.key, required this.products,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          ),
          scrollDirection: Axis.vertical,
          itemCount:products.length, //  MyProduct.coffee.length, 
          itemBuilder: (context, index) { 
            //final allProduct = MyProduct.coffee[index];// 
          return ProductCard(product: products [index],);//we want the product to put in the container one by one
           },
      ),
    );
  }
  
}