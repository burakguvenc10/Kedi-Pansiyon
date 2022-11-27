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
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
            height: 20,
          ),

          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 135,
            width: 190,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey[200],
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          //Text("Kedi Pansiyon",style: TextStyle(color: Colors.grey.shade600, fontSize: 18),),
        ],
      ),
    );
  }
}