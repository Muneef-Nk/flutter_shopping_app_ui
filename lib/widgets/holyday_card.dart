import 'package:flutter/material.dart';
import 'package:shoping_app/product_details.dart';

class HolyDayCard extends StatelessWidget {
  final String img;
  final String title;
  final String size;
  final double price;

  const HolyDayCard(
      {required this.price,
      required this.title,
      required this.img,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetails(
                  price: price,
                  context: context,
                  title: title,
                  img: img,
                  size: size,
                )));
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                blurRadius: 3,
                spreadRadius: 0.7,
              )
            ],
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(left: 8, top: 20, bottom: 10),
        height: 150,
        width: 220,
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(height: 120, child: Image.asset(img))),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    size,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
