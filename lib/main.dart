import '../Anim/Animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Component/Drawerbar.dart';
import '../Page/Anasayfa.dart';
import '../Page/Resimler.dart';
import '../Page/Iletisim.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.red,
        fontFamily: 'Akrobat-Semibold',
      ),
      home: Animated_splash(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedItem = 0;
  final List<Widget> tumSayfalar = [
    Anasayfa(),
    Resimler(),
    Iletisim(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tumSayfalar[selectedItem],
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/logo.png', color:Colors.white, fit: BoxFit.cover, width: 160,),
      ),

      drawer: Drawerbar(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          currentIndex: selectedItem,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Anasayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image_outlined),
              label: 'Resimler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'İletişim',
            ),
          ],
          onTap: (index){
            setState(() {
              selectedItem = index;
            });
          }
      ),

    );
  }




  @override
  void initState(){
    super.initState();
    //Ekran dönmesini engelleme
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,

    ]);
  }
}
