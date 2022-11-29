import 'package:flutter/material.dart';

class Drawer_Body extends StatefulWidget {
  @override
  Drawer_BodyState createState() => Drawer_BodyState();
}

class Drawer_BodyState extends State<Drawer_Body> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child:Text(
              "Hakkımızda",style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 80.0, right: 80.0,top: 3,bottom: 4),
            height: 1.0,
            color: Colors.grey.shade600,
          ),
          Padding(
              padding: EdgeInsets.only(left:15,right: 15,bottom: 15),
              child:Text(
              'Aşılama ve Aşı Takibi\nKedi ve köpeklerde çoğunlukla ölümcül olan virüslerin yol açtığı viral hastalıklar kedilerde İmmun yetmezliği-immunodeficiency virüs (FIV), feline levkemia virus (FELV), feline infeksiyuza bilgilendirme amaçlı mesaj olarak gönderilir.'
              ,style: TextStyle(
              fontSize: 15,  fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              ),
          ),

          SizedBox(
            height: 20,
          ),

          Container(
            margin: const EdgeInsets.only(top: 12.0),
            child:Text(
              "Adres",style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 80.0, right: 80.0,top: 3,bottom: 4),
            height: 1.0,
            color: Colors.grey.shade600,
          ),

          Text(
            'Mimar Sinan, Mimar Sinan Cd. No:13-2, 34782 Çekmeköy/İstanbul'
            ,style: TextStyle(
            fontSize: 16,  fontWeight: FontWeight.bold,
          ),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 20,
          ),

          Container(
            margin: const EdgeInsets.only(top: 12.0),
            child:Text(
              "İletişim",style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 80.0, right: 80.0,top: 3),
            height: 1.0,
            color: Colors.grey.shade600,
          ),

          Container(
            margin: const EdgeInsets.only(top:15, left: 40.0),
            child: Column(
            children: [
              Row(
                children: [
                  Image(
                      height: 25,
                      width: 25,
                      image: AssetImage('assets/phone.png'),
                      fit: BoxFit.contain,
                  ),
                  Text(
                    '  0 216 641 90 40'
                    ,style: TextStyle(
                    fontSize: 16,  fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Image(
                      height: 25,
                      width: 25,
                      image: AssetImage('assets/instagram.png'),
                      fit: BoxFit.contain
                  ),
                  Text(
                    '  /vizyonveteriner'
                    ,style: TextStyle(
                    fontSize: 16,  fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              /*Row(
                children: [
                  Image(
                      height: 27,
                      width: 27,
                      image: AssetImage('assets/whatsapp.png'),
                      fit: BoxFit.contain
                  ),
                  Text(
                    '  İletişim Hattı'
                    ,style: TextStyle(
                    fontSize: 16,  fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),*/

              Row(
                children: [
                  Image(
                      height: 25,
                      width: 25,
                      image: AssetImage('assets/web.png'),
                      fit: BoxFit.contain
                  ),
                  Text(
                    '  vizyonveterinerklinigi.com'
                    ,style: TextStyle(
                    fontSize: 16,  fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ],
               ),
             ],
            ),
          ),

          SizedBox(
            height: 14,
          ),

          Padding(
            padding: EdgeInsets.only(right: 85),

            child: Image(
              image: AssetImage('assets/vizyonlogo.png'),
              height: 35,
            ),
          ),

          SizedBox(
            height: 20,
          ),

        ],


      ),
    );
  }
}


