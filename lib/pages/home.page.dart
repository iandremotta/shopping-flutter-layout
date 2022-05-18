import 'package:Shopping/pages/product.page.dart';
import 'package:Shopping/widgets/category/category-item.widget.dart';
import 'package:Shopping/widgets/category/category-list.widget.dart';
import 'package:Shopping/widgets/product/product-item.widget.dart';
import 'package:Shopping/widgets/product/product-list.widget.dart';
import 'package:Shopping/widgets/search-box.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60,
              ),
              SearchBox(),
              SizedBox(
                height: 30,
              ),
              Text("Categories", style: Theme.of(context).textTheme.headline),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Selling",
                      style: Theme.of(context).textTheme.headline),
                  FlatButton(
                    onPressed: () {},
                    child: Text("See All"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                child: ProductList(
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
