import 'package:flutter/material.dart';

import 'product.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.item, required this.title})
      : super(key: key);
  final Product item;
  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(0),
          height: 100,

          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/appimage/" + this.item.image,
                  height: 40,
                  width: 40,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),

                        Text(
                          this.item.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          this.item.post,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        //Text(this.item.description),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              this.item.fprice.toString() +
                                  "-" +
                                  this.item.sprice.toString() +
                                  " per month ",
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 70),
                            Text(
                              this.item.day.toString() + " day ago",
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}