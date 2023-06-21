import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mide_store/pages/activity/activity_page.dart';
import 'package:mide_store/pages/hotel/hotel_page.dart';
import 'package:mide_store/flight.dart';
import '../restuarant/restaurant.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int SelectedIndex =0;
  var Show=false;
  List<Widget> routePage= <Widget>[
    ActivityPage(),
    HotelPage(),
    SecondPage(),
    RestaurantPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Vertical(callback:(index){
              setState(() {
                SelectedIndex=index;
              });
            }, SelectedIndex: SelectedIndex,),
            Expanded(child:routePage[SelectedIndex]
            ),
          ],
        ),
      ),
    );
  }
}

class Vertical extends StatelessWidget {
  final int SelectedIndex;
  final Function callback;
  const Vertical({Key? key, required this.callback, required this.SelectedIndex}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    List<String> NavigationText=[
      'Activities','Hotels','Flights','Restaurants',
    ];
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.18,
      color:  Color(0xFF231955),
      alignment: Alignment.center,
      child:ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount:NavigationText.length,
        itemBuilder: (_,index){
          return  Align(
            alignment: Alignment.center,
            child: RotatedBox(
              quarterTurns: 5,
              child: Center(
                child: GestureDetector(
                  onTap:(){callback(index);},
                  child: Container(
                    child:Text(
                        NavigationText[index],
                      style: GoogleFonts.quicksand(
                        fontSize: 16.sp,
                        fontWeight: SelectedIndex==index ? FontWeight.bold: FontWeight.normal,
                        color:SelectedIndex==index ? Colors.white: Colors.white.withAlpha(200),
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index)=> SizedBox(height: 50,),),
    );
  }
}

