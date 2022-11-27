import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15.0),
            child:Card(
            elevation: 3,
            color: Colors.grey[100],
            child:Container(
            margin: const EdgeInsets.all(20.0),
            child: Scrollbar(
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
                          width: 9.0,
                          height: 9.0,
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

                Padding(
                  padding: EdgeInsets.only(right: 185),
                  child:Image.asset(
                      height: 120,
                      'assets/dog1.png'
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 185),
                  child:Image.asset(
                      height: 130,
                      'assets/dog2.png'
                  ),
                ),

                SizedBox(
                  height: 25,
                ),


                //Table

            ],



              ),
            ),
          ),
        ),
      ),
    );
  }
}