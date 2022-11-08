import 'package:flutter/material.dart';

class Drawer_Header extends StatefulWidget {
  @override
  Drawer_HeaderState createState() => Drawer_HeaderState();
}

class Drawer_HeaderState extends State<Drawer_Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: double.infinity,
      height: 220,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 115,
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/gif/runcat.gif'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Text("Kedi Pansiyon",style: TextStyle(color: Colors.grey.shade600, fontSize: 18),),
        ],
      ),
    );
  }
}