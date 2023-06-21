import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widgets/clipped_container.dart';
import '../../model/activity_model.dart';

class ActivityDetailsPage extends StatefulWidget {
  const ActivityDetailsPage({Key? key,  this.activity,  this.isNetwork=true,}) : super(key: key);

  final Activity? activity;
  final bool isNetwork;

  @override
  State<ActivityDetailsPage> createState() => _ActivityDetailsPageState();
}

class _ActivityDetailsPageState extends State<ActivityDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _ActivityImage(activity: widget.activity!, isNetwork: widget.isNetwork,),
          _ActivityInformation(activity: widget.activity!),
        ],
      ),
    );
  }
}

class _ActivityImage extends StatelessWidget {
  const _ActivityImage({
    Key? key,
    required this.activity, this.isNetwork=true,
  }) : super(key: key);

  final Activity activity;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClippedContainer(height: 395.h),
        Hero(
          tag: '${activity.id}_${activity.title}',
          child: ClippedContainer(imageUrl: activity.imageUrl, isNetwork:isNetwork),
        ),
        Positioned(
             top: 40.h,
            left:15.w,
            child: GestureDetector(
              onTap:()=>Get.back(),
              child: Icon(Icons.arrow_back, color: Colors.white, size: 30.sp,),
            )
        )
      ],
    );
  }
}

class _ActivityInformation extends StatelessWidget {
  const _ActivityInformation({
    Key? key,
    required this.activity,
  }) : super(key: key);

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:  EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          bottom: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child:SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        activity.title,
                        style:GoogleFonts.quicksand(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      RatingBar.builder(
                        initialRating: activity.rating,
                        minRating: 0,
                        direction: Axis.horizontal,
                        ignoreGestures: true,
                        itemCount: 5,
                        itemSize: 20.sp,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'About',
                        style:GoogleFonts.quicksand(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        activity.description,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                )
            ),
            // const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${activity.price}',
                  style:GoogleFonts.quicksand(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF231955),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w)
                  ),
                  child: Text(
                    'Book Now',
                    style:GoogleFonts.quicksand(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
