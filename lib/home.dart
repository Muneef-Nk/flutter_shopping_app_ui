import 'package:flutter/material.dart';
import 'home_body.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttomNavButton(buttonIcon: Icons.home, isSelected: false),
            buttomNavButton(buttonIcon: Icons.search, isSelected: false),
            buttomNavButton(buttonIcon: Icons.shopping_bag, isSelected: true),
            buttomNavButton(
                buttonIcon: Icons.payment_rounded, isSelected: false),
            buttomNavButton(buttonIcon: Icons.account_box, isSelected: false),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        toolbarHeight: 60,
        leading: Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/menuIcon.png',
            )),
        actions: [
          Container(
              margin: EdgeInsets.all(10),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
              child: Icon(
                Icons.search_sharp,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 15),
              Text('Shop', style: TextStyle(fontSize: 25),),
              SizedBox(width: 3),
              Text('Application', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              headerButton(isSelected: true, name: 'Men'),
              headerButton(name: 'Women'),
              headerButton(name: 'Kids'),
            ],
          ),
          SizedBox(height: 20,),
           HomeBody(),
        ],
      ),
    );
  }

  Container buttomNavButton(
      {required IconData buttonIcon, bool isSelected = false}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 7)]
              : [],
          shape: BoxShape.circle,
          color: isSelected ? Colors.pink : Colors.white),
      child: Icon(buttonIcon, color: isSelected ? Colors.white : Colors.black),
    );
  }

  Widget headerButton({required String name, bool isSelected = false}) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: const MaterialStatePropertyAll(StadiumBorder()),
          backgroundColor: MaterialStatePropertyAll(
              isSelected ? Colors.pink : Colors.grey[600])),
      onPressed: () {
        setState(() {
          isSelected = true;
        });
      },
      child: Text(name),
    );
  }
  bool isSelected=false;
}
