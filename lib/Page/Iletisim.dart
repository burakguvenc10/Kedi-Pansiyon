import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Iletisim extends StatefulWidget {
  @override
  _Iletisim createState() => _Iletisim ();
}

class _Iletisim  extends State<Iletisim> {

  Set<Marker> markers = {};
  late BitmapDescriptor mapMarker;

  Completer<GoogleMapController> haritakontrol = Completer();
  var baslangickonum = CameraPosition(target: LatLng(41.032940,29.175350),zoom: 16,);

  void setCustomMarker()async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'assets/location.png');
  }

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  void _0nMapCreated(GoogleMapController googleMapController){
    setState(() {
      markers.add(
        Marker(
        markerId: MarkerId('defaultLocation'),
        position: LatLng(41.032940,29.175350),
        icon: mapMarker,
        infoWindow: InfoWindow(
          title: 'Vizyon Veteriner Kliniği',
          snippet: 'Mimar Sinan/Çekmeköy',
        ),
      ),
      );
    });
  }

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
                    onMapCreated: _0nMapCreated
                      /*(GoogleMapController controller){
                        haritakontrol.complete(controller);
                      }*/,
                      mapType: MapType.normal,
                      markers: markers,
                      initialCameraPosition: baslangickonum,
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
                      height: 30,
                      width: 30,
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
                        height: 30,
                        width: 30,
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

                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        openwhatsapp();
                      }, iconSize: 33.0,
                      icon: const Icon(
                        Icons.whatsapp,
                      ),
                    ),
                    /*Image(
                        height: 33,
                        width: 33,
                        image: AssetImage('assets/whatsapp.png'),
                        fit: BoxFit.contain
                    ),*/
                    Text(
                      '  Whatsapp İletişim Hattı'
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
                        height: 30,
                        width: 30,
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

  Future<void> openwhatsapp() async{
    String url = "https://api.whatsapp.com/send/?phone=+905427695260&text=Merhabalar";
    final Uri _url = Uri.parse(url);
    await canLaunchUrl(_url) ? canLaunchUrl(_url) : print('Whatsapp Uygulaması Açılamadı!');
  }









}