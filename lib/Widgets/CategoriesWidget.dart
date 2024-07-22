import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, // Sesuaikan tinggi container sesuai kebutuhan Anda
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(), // Menonaktifkan efek scroll
        children: [
          // Single Item
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),
                  child: Image.asset(
                    "images/Burger & Minuman.jpg",
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "All",
                  style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

           Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),
                  child: Image.asset(
                    "images/Burger.jpg",
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Makanan",
                  style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

           Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),
                  child: Image.asset(
                    "images/Minuman.png",
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Minuman",
                  style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
