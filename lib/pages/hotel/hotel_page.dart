import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widgets/custom_header.dart';
import '../../model/activity_model.dart';
import '../activity/activity_detail.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  List<Activity> hotels = Activity.generateHotels();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            CustomHeader(title: 'Hotels'),
            _HotelsMasonryGrid(
              width: MediaQuery.of(context).size.width,
               hotels: hotels,
            )
          ],
        ),
      ),
    );
  }
}


class _HotelsMasonryGrid extends StatelessWidget {
  const _HotelsMasonryGrid({
    Key? key,
    this.masonryCardHeights = const [200, 250, 300],
    required this.width,
    required this.hotels,
  }) : super(key: key);

  final List<double> masonryCardHeights;
  final double width;
  final List<Activity> hotels;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10.0.sp),
      itemCount:hotels.length,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        Activity hotel = hotels[index];
        return _buildActivityCard(
          context,
          hotel,
          index,
        );
      },
    );
  }

  InkWell _buildActivityCard(
      BuildContext context,
      Activity hotel,
      int index,
      ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActivityDetailsPage(activity: hotel,isNetwork:false),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: '${hotel.id}_${hotel.title}',
            child: Container(
              height: masonryCardHeights[index % 3],
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0.r),
                image: DecorationImage(
                  image:AssetImage(hotel.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            hotel.title,
            maxLines: 3,
            style:  GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}