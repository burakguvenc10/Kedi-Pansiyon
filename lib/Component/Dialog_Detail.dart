import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

final Mail_controller = TextEditingController();
final Sifre_controller = TextEditingController();

class Dialog_Detail extends StatefulWidget {
  @override
  _Dialog_Detail createState() => _Dialog_Detail();
}

class _Dialog_Detail extends State<Dialog_Detail> {
  String _IsEmpty = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.grey[200],
      child: Column(
        children: [

          Image.asset('assets/logo.png',height: 40,alignment: Alignment.topCenter,),

          TextFormField(
            controller: Mail_controller,
            decoration: InputDecoration(
              errorStyle: TextStyle(color: Colors.redAccent),
              border: OutlineInputBorder(),
              labelText: 'E-Posta',
              suffixIcon: IconButton(
                onPressed: Mail_controller.clear,
                icon: Icon(Icons.clear_sharp),
                color: Colors.orange,
              ),
              hintText: 'E-Posta Adresini Yazınız',
            ),
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
            onSaved: (deger) {
              _IsEmpty = deger!;
              setState(() {});
            },
            onChanged: (deger) {
              setState(() {});
            },

            validator: (deger) {
              if (deger!.isEmpty) {
                return 'Bir Değer Girmediniz!';
              } else {
                return null;
              }
            },
          ),

          SizedBox(
            height: 10,
          ),

          TextFormField(
            controller: Sifre_controller,
            decoration: InputDecoration(
              errorStyle: TextStyle(color: Colors.redAccent),
              border: OutlineInputBorder(),
              labelText: 'Şifre',
              suffixIcon: IconButton(
                onPressed: Sifre_controller.clear,
                icon: Icon(Icons.clear_sharp),
                color: Colors.orange,
              ),
              hintText: 'Şifrenizi Yazınız',
            ),
            keyboardType: TextInputType.visiblePassword,
            maxLines: 1,
            onSaved: (deger) {
              _IsEmpty = deger!;
              setState(() {});
            },
            onChanged: (deger) {
              setState(() {});
            },

            validator: (deger) {
              if (deger!.isEmpty) {
                return 'Bir Değer Girmediniz!';
              } else {
                return null;
              }
            },
          ),

          SizedBox(
            height: 10,
          ),

          AnimatedButton(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Akrobat-Regular',
                    ),
                  ),
                ],
              ),
            ),
            color: Colors.orangeAccent,
            enabled: true,
            duration: 30,
            shadowDegree: ShadowDegree.dark,
            width: 215,
            height: 38,
            onPressed: () {},
          ),

          SizedBox(
            height: 5,
          ),

          AnimatedButton(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: Image.asset('assets/facebook.png',height: 25, width: 25,),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Facebook ile Devam Et',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Akrobat-Regular',
                    ),
                  ),
                ],
              ),
            ),
            color: Colors.blueAccent,
            enabled: true,
            duration: 30,
            shadowDegree: ShadowDegree.dark,
            width: 215,
            height: 37,
            onPressed: () {},
          ),

          SizedBox(
            height: 5,
          ),

          AnimatedButton(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: Image.asset('assets/mail.png',height: 20, width: 25,),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Google ile Devam Et',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Akrobat-Regular',
                    ),
                  ),
                ],
              ),
            ),
            color: Colors.red,
            enabled: true,
            duration: 30,
            shadowDegree: ShadowDegree.dark,
            width: 215,
            height: 37,
            onPressed: () {},
          ),

        ],
      ),
    );
  }
}