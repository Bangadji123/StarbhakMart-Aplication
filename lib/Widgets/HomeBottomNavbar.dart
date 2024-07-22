import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.black,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "listPage");
            },
            child: Icon(
              Icons.article_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}