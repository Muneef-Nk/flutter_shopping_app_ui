import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoping_app/line_bar.dart';
import 'package:shoping_app/widgets/holyday_card.dart';
import 'package:shoping_app/widgets/home_cards.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400, spreadRadius: 1, blurRadius: 10)
            ]),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowMenus(name: 'Watches', isMenuSelected: true),
                  rowMenus(name: 'Casual Shoes'),
                  rowMenus(name: 'Shorts'),
                  rowMenus(name: 'Belts'),
                  rowMenus(name: 'Suits'),

                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: const [
                    HomeCards(title: 'Watch', img: 'assets/images/a.jpg', price: 20),
                    HomeCards(title: 'Watch', img: 'assets/images/j.jpg', price: 44),
                    HomeCards(title: 'Watch', img: 'assets/images/c.jpg', price: 87,),
                    HomeCards(title: 'Watch', img: 'assets/images/d.jpg', price: 35,),
                    HomeCards(title: 'Watch', img: 'assets/images/o.jpg', price: 75,),
                    HomeCards(title: 'Watch', img: 'assets/images/f.jpg', price: 88,),
                    HomeCards(title: 'Watch', img: 'assets/images/k.jpg', price: 92,),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Linebar(),
              SizedBox(height: 20),
              
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 30, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Holiday Special' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
                    Text('View All', style: TextStyle(fontSize: 15,color: Colors.grey, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    // SizedBox(height: 0),
                    HolyDayCard(size: '32mm', title: 'Watch', img: 'assets/images/h.jpg', price: 73,),
                    HolyDayCard(size: '36mm', title: 'Watch', img: 'assets/images/n.jpg', price: 78,),
                    HolyDayCard(size: '34mm', title: 'Watch', img: 'assets/images/i.jpg', price: 91,),
                    HolyDayCard(size: '31mm', title: 'Watch', img: 'assets/images/o.jpg', price: 34,),
                    HolyDayCard(size: '38mm', title: 'Watch', img: 'assets/images/b.jpg', price: 80,),
                    HolyDayCard(size: '38mm', title: 'Watch', img: 'assets/images/m.jpg', price: 80,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget rowMenus({required String name,  bool isMenuSelected=false }) {
    return Column(
      children: [
        SizedBox(height: 30),
        Text(name, style: TextStyle(
            fontSize: 16,
            color: isMenuSelected ? Colors.black:Colors.grey
        ),
        ),
        Container(
          width: 5,
          height: 5,
          decoration:
              BoxDecoration(color:  isMenuSelected? Colors.red: Colors.grey[200], shape: BoxShape.circle),
        )
      ],
    );
  }
}
