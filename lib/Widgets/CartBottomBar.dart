import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.discount,
                  color: Colors.green,
                ),
                Text(
                  "Use promo cupons",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 25, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Pembayaran",
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(162, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "\Rp. 71.000",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap:() {
                  Navigator.pushNamed(context, "homePage",);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Check Out",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}