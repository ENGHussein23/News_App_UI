import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Widgets/Recommendation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliderP(),
    );
  }
}

class SliderP extends StatefulWidget {
  SliderP({Key? key}) : super(key: key);

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  // Widget buildImage(String urlImage, int index) =>
  //     Container(child: Image.asset(urlImage, fit: BoxFit.cover));


  Widget News(String urlImage, int index)=>Container(
    height: 200,
    width: 400,
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          // color: Colors.indigoAccent, // Set border color
            color: Color.fromARGB(0, 0, 0, 0),
            width: 2.0), // Set border width
        borderRadius: BorderRadius.all(
            Radius.circular(20.0)), // Set rounded corner radius
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              color: Colors.black38,
              offset: Offset(1, 3))
        ] // Make rounded corner of border
    ),
    child: Stack(
      fit: StackFit.loose,
      textDirection: TextDirection.ltr,
      children: [
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child:Image(
                fit: BoxFit.cover,
                image: AssetImage(urlImage),
              ),
            ),],
        ),
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Color.fromARGB(250, 0, 0, 0),
                        Colors.transparent,
                      ],
                    )
                ),
              ),
            )
          ],),
        Positioned(
          top: 120,
          left: 20,
          // bottom: 20,
          child:
          Column (
            // textDirection: TextDirection.rtl,

            children: [
              Container(width: 280,alignment: Alignment.topLeft,child: Row(
                children: [
                  Text('Argantina!',style: TextStyle(fontSize: 15,color: Colors.white,),),
                  Icon(Icons.star,color: Colors.lightBlueAccent,),
                  Text('18-12-2022',style: TextStyle(fontSize: 13,color: Colors.white),),
                ],),),
              Container(width: 280,height: 60,alignment: Alignment.topLeft,child:
              Card(elevation: 0,color: Colors.transparent,child: Text('Messi has won!',style: TextStyle(fontSize: 23,color: Colors.white),textAlign: TextAlign.start,),

              )
              )
            ],),),
        Positioned(
          left: 10,
          top: 10,
          child: SizedBox(
            height: 30,width: 80,
            child: ElevatedButton(onPressed: (){},child: Text('Sports'),
              style: ElevatedButton.styleFrom(
                // fixedSize: Size.fromHeight(40),
                elevation: 5,
                backgroundColor: Colors.lightBlue,
                // minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),),),
        ),
      ],
    ),
  );

  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'assets/1.jpg','assets/2.jpg','assets/4.jpg','assets/3.jpg','assets/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
        tabBackgroundColor: Colors.blue,
        rippleColor: Colors.grey,
        hoverColor: Colors.grey,
        // tabBorderRadius: 15,
        color: Colors.grey,
        activeColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tabs: [
          GButton(icon: Icons.home,text: 'Home'),
          GButton(icon: Icons.web_stories ,text: 'Network',),
          GButton(icon: Icons.save,text: 'Saved',),
          GButton(icon: Icons.person_outline_outlined,text: 'Profile',),
        ],
      ),
      backgroundColor: Colors.white,
      body:
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){}, child: Icon(Icons.menu,color: Colors.black87,),
                    style: ElevatedButton.styleFrom(
                      // fixedSize: Size.fromHeight(40),
                      elevation: 0,
                      backgroundColor: Colors.grey[200],
                      minimumSize: Size(50, 50),
                      // padding: EdgeInsets.symmetric(horizontal: 16),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),),
                  Row(
                    children: [
                      ElevatedButton(onPressed: (){}, child: Icon(Icons.search,color: Colors.black87,),
                        style: ElevatedButton.styleFrom(
                          // fixedSize: Size.fromHeight(40),
                          elevation: 0,
                          backgroundColor: Colors.grey[200],
                          minimumSize: Size(50, 50),
                          // padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),),
                      SizedBox(width: 3,),
                      ElevatedButton(onPressed: (){},
                        child: Badge(
                          child: Icon(Icons.notifications_none_outlined,color: Colors.black87,),
                          label: Text(''),
                          largeSize: 5,
                          smallSize: 6,
                          // alignment: AlignmentDirectional.topEnd,
                          padding: EdgeInsets.only(top: 0,right: 9,bottom: 10),
                        ),
                        style: ElevatedButton.styleFrom(
                          // fixedSize: Size.fromHeight(40),
                          elevation: 0,
                          backgroundColor: Colors.grey[200],
                          minimumSize: Size(50, 50),
                          // padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),),
                    ],
                  ),

                ],),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Breacking News',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                    ),
                  ),
                  Text('View all',
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return News(urlImage, index);
                  // buildImage(urlImage, index);
                },
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                )
            ),
            SizedBox(height: 12),
            buildIndicator(),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommendation',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                    ),
                  ),
                  Text('View all',
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              height: 240,
              color: Colors.white,
              child: ListView(children: [
                Recommendation('assets/1.jpg','sports','Messi has won!','assets/3.jpg','Lionel Messi','18-12-2022'),
                Recommendation('assets/2.jpg','sports','Messi has won!','assets/3.jpg','Lionel Messi','18-12-2022'),
                Recommendation('assets/1.jpg','sports','Messi has won!','assets/3.jpg','Lionel Messi','18-12-2022'),
                Recommendation('assets/2.jpg','sports','Messi has won!','assets/3.jpg','Lionel Messi','18-12-2022'),
                // Recommendation(this.image,this.category, this.Title, this.OtherImage,this.OutherName, this.date)

              ]),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: ExpandingDotsEffect(dotHeight: 10,dotWidth: 12, activeDotColor: Colors.blue),
    // ExpandingDotsEffect(dotHeight: 7,dotWidth: 15, activeDotColor: Colors.blue),
    activeIndex: activeIndex,
    count: urlImages.length,
  );

  void animateToSlide(int index) => controller.animateToPage(index);
}