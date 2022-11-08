import 'package:flutter/material.dart';
import '../Page/Webview.dart';

class Resimler extends StatefulWidget {
  @override
  _Resimler createState() => _Resimler();
}

class _Resimler extends State<Resimler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Webview(),

    );

  }
}