import 'package:flutter/material.dart';
import 'package:myshopcar/model/Product.dart';
import 'package:myshopcar/constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  
  const ItemCard({Key? key, required this.product, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child:Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Hero(
                tag:"${product.id}",
                child: Image.asset(product.image),
              ),
            )
          ),
          Padding(
            padding:const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
