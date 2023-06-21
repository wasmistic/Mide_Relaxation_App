import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), (){
      Get.toNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF231955),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Mylogo.png'),
              radius: 50.sp,
            ),
            SizedBox(height:10.h,),
            Text('Welcome To MIde',
              style: GoogleFonts.rubik(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
                color: Colors.white
              ),
            ),
            SizedBox(height:10.h,),
            Text('Home of Comfort with full relaxation',
              style: GoogleFonts.rubik(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: Colors.white.withAlpha(200),
              ),
            )
          ],
        ),
      ),
    );
  }
}
