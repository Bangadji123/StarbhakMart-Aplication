import 'package:aplikasi_pemesan_makanan/Widgets/CartBottomBar.dart';
import 'package:aplikasi_pemesan_makanan/Widgets/CartItemSamples.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PermanentMarker',
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(Icons.person_outline),
                  )
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(children: [
              CheckboxListTile(
                activeColor: Colors.blue,
                title: Text(
                  "Select all items",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Oxygen',
                  ),
                ),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Divider(height: 30, thickness: 1),
                CartItemSamples(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "PPN 11%",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold, 
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "\Rp. 3.000",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                ],
              ),

              Divider(height: 20, thickness: 1),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Belanja",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold, 
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "\Rp. 60.000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                ],
              ),

              Divider(height: 20, thickness: 1),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "\Rp. 0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                ],
              ),

              Divider(height: 20, thickness: 1),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "\Rp. 8.000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}