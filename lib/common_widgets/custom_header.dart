import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
    required this.title,
    this.subtitle = 'Enjoy your holiday at Mide relaxing center',
  }) : super(key: key);

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.bold,
              fontSize:30.sp
            ),
          ),
           SizedBox(height: 3.h),
          Text(
            subtitle,
            style: GoogleFonts.rubik(
              fontSize: 13.sp,
              fontWeight: FontWeight.normal
            ),
          ),
        ],
      ),
    );
  }
}
