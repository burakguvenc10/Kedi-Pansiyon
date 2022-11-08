import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Iletisim extends StatefulWidget {
  @override
  _Iletisim createState() => _Iletisim ();
}

class _Iletisim  extends State<Iletisim> {

  Completer<GoogleMapController> haritakontrol = Completer();
  var baslangickonum = CameraPosition(target: LatLng(41.032940,29.175350),zoom: 14,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          elevation: 3,
          color: Colors.grey[100],
          child:Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  height: 300,
                  child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: baslangickonum,
                      onMapCreated: (GoogleMapController controller){
                        haritakontrol.complete(controller);
                      }
                  ),
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
                  height: 25,
                ),

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
                  height: 6,
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
                  height: 6,
                ),

                Row(
                  children: [
                    Image(
                        height: 27,
                        width: 27,
                        image: AssetImage('assets/whatsapp.png'),
                        fit: BoxFit.contain
                    ),
                    Text(
                      '  Sorumlu Veteriner Hekim'
                      ,style: TextStyle(
                      fontSize: 16,  fontWeight: FontWeight.bold,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                SizedBox(
                  height: 6,
                ),


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




         ),
       ),
      ),
    );

  }
}