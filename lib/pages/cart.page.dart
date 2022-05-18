import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).accentColor,
              child: productList(context),
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "R\$ 4350",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "CHECKOUT",
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget productList(context) {
  return ListView(
    children: [
      productItem(context),
      productItem(context),
      productItem(context),
      productItem(context),
      productItem(context),
      productItem(context),
    ],
  );
}

Widget productItem(BuildContext context) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            "assets/product-10.png",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Título do produto"),
              Text(
                "R\$200",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text("-"),
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text("1"),
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text("+"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
