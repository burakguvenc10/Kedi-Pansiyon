import 'package:kedi_pansiyon/Component/Drawer_Header.dart';
import 'package:kedi_pansiyon/Component/Drawer_Body.dart';
import 'package:flutter/material.dart';

class Drawerbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Drawer_Header(),
            Drawer_Body(),
          ],
         ),
        ),
      ),
    );

  }
}
