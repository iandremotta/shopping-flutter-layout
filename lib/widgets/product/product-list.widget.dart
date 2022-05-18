import 'package:Shopping/widgets/product/product-item.widget.dart';
import 'package:flutter/cupertino.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;
  ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: [
          ProductItem(
              title: "Nike Dry-Fit Long Sleeve",
              description: "Nike",
              image: "assets/product-10.png",
              price: '150'),
          ProductItem(
              title: "BeoPlay Speaker",
              description: "Bang  and Olufen",
              image: "assets/product-1.png",
              price: "120"),
          ProductItem(
            title: "BeoPlay Speaker",
            description: "Bang  and Olufen",
            image: "assets/product-2.png",
            price: "750",
          ),
        ],
      ),
    );
  }
}
