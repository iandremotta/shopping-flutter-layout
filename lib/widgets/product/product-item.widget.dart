import 'package:Shopping/pages/product.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;
  ProductItem(
      {@required this.image,
      @required this.title,
      @required this.description,
      @required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                      title: this.title,
                      description: this.description,
                      image: this.image,
                      price: this.price),
                ),
              );
            },
            child: Hero(
              tag: image,
              child: Image.asset(
                this.image,
                width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              "R\$ ${this.price}",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
