import 'package:flutter/material.dart';
import 'package:shoping_app/product_details.dart';

class HomeCards extends StatelessWidget {
  final String img;
  final String title;
  final double price;

  const HomeCards(
      {super.key, required this.img, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails(
                  price: price,
                  img: img,
                  title: title,
                  context: context,
                  size: '40 mm',
                )));
          },
          child: Container(
            margin: EdgeInsets.all(8),
            height: 200,
            width: 140,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "\$$price",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
