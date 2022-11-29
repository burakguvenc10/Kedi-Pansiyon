import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_button/animated_button.dart';


class Anasayfa extends StatefulWidget {
  @override
  _Anasayfa createState() => _Anasayfa();
}

class _Anasayfa extends State<Anasayfa> {
  int current = 0;
  CarouselController buttonCarouselController = CarouselController();

  final List<String> imgList = [
    'assets/cat1.jpg',
    'assets/cat2.jpg',
    'assets/cat3.jpg',
    'assets/cat4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      //backgroundColor: Colors.grey[100],
      child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
              children: [

                Card(
                  elevation: 3,
                  //margin: const EdgeInsets.all(10.0),
                  child: CarouselSlider(
                    items: [Image.asset('assets/cat1.jpg',fit:BoxFit.fill,),Image.asset('assets/cat2.jpg',fit:BoxFit.fill,),Image.asset('assets/cat3.jpg',fit:BoxFit.fill,),Image.asset('assets/cat4.jpg',fit:BoxFit.fill,)],
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason){
                        setState((){
                          current = index;
                        });
                      }),
                  ),
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => buttonCarouselController.animateToPage(entry.key),
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                                  .withOpacity(current == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    }).toList(),
                  ),

              SizedBox(
                height: 25,
              ),

              AnimatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/gif/doc.gif',color: Colors.white),
                      Text(
                        'Fiyat Listesi İçin Tıklayınız',
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
                enabled : true,
                duration: 25,
                shadowDegree: ShadowDegree.dark,
                width: 210,
                onPressed: () {
                },
              ),

                SizedBox(
                  height: 35,
                ),

                Padding(
                  padding: EdgeInsets.only(right: 195),
                  child:Image.asset(
                      height: 120,
                      'assets/dog1.png'
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 195),
                  child:Image.asset(
                      height: 120,
                      'assets/dog2.png'
                  ),
                ),

                SizedBox(
                  height: 10,
                ),


            ],





          ),
      ),
    );
  }
}