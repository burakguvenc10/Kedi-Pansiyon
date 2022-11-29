import 'dart:async';
import 'package:open_whatsapp/open_whatsapp.dart';
import 'package:flutter/services.dart';
import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Iletisim extends StatefulWidget {
  @override
  _Iletisim createState() => _Iletisim ();
}

class _Iletisim  extends State<Iletisim> {

  Set<Marker> markers = {};
  late BitmapDescriptor mapMarker;
  String _platformVersion = 'Unknown';

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
    initPlatformState();
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

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await FlutterOpenWhatsapp.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scrollbar(
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

                SizedBox(
                  height: 10,
                ),


                Row(
                  children: [
                    AnimatedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/whatsapp.png',height: 30,width: 32,),
                            SizedBox(width: 5),
                            Text(
                              'Whatsapp İletişim Hattı',
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
                      color: Colors.green,
                      enabled : true,
                      duration: 30,
                      shadowDegree: ShadowDegree.dark,
                      width: 195,
                      height: 54,
                      onPressed: () {
                        FlutterOpenWhatsapp.sendSingleMessage("905531039040", "Merhabalar, ");
                      },
                    ),
                  ],
                ),




              ],
            ),
           ),
         ),
       ),
    );
  }









}