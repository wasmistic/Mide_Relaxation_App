import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widgets/custom_header.dart';
import '../../model/activity_model.dart';
import '../activity/activity_detail.dart';


class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  List<Activity> restaurant = Activity.generateRestaurant;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            CustomHeader(title: 'Restaurant'),
            _RestaurantMasonryGrid(
              width: MediaQuery.of(context).size.width,
              restaurant:restaurant,
            )
          ],
        ),
      ),
    );
  }
}


class _RestaurantMasonryGrid extends StatelessWidget {
  const _RestaurantMasonryGrid({
    Key? key,
    this.masonryCardHeights = const [200, 250, 300],
    required this.width,
    required this.restaurant,
  }) : super(key: key);

  final List<double> masonryCardHeights;
  final double width;
  final List<Activity> restaurant;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding:EdgeInsets.all(10.0.sp),
      itemCount:restaurant.length,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        Activity restaurants = restaurant[index];
        return _buildActivityCard(
          context,
          restaurants,
          index,
        );
      },
    );
  }

  InkWell _buildActivityCard(
      BuildContext context,
      Activity restaurants,
      int index,
      ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActivityDetailsPage(activity: restaurants,isNetwork: false),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: '${restaurants.id}_${restaurants.title}',
            child: Container(
              height: masonryCardHeights[index % 3],
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  image:AssetImage(restaurants.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            restaurants.title,
            maxLines: 3,
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
